const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const openai = require('../config/openai');

const areas = ["CustomerServiceAreas", "Offices", "ATMs", "Vaults", "HVACSystems", "Lighting", "SecuritySystems", "ITServerRooms"];
const ELECTRICITY_PRICE_CENTS_PER_KWH = 17.96; // Price in cents per kWh
const ELECTRICITY_PRICE_PER_KWH = ELECTRICITY_PRICE_CENTS_PER_KWH / 100; // Convert cents to dollars

async function getPercentageConsumptionByArea() {
  try {
    // Get the dummy user (assuming there's only one)
    const dummyUser = await prisma.user.findFirst();

    if (!dummyUser) {
      throw new Error('No dummy user found');
    }

    // Get total energy usage for the dummy user
    const totalUsage = await prisma.dummyUsage.aggregate({
      where: {
        userId: dummyUser.id
      },
      _sum: {
        usageAmountKwh: true
      }
    });

    const totalEnergyUsage = totalUsage._sum.usageAmountKwh || 0;
    const totalEnergyCost = totalEnergyUsage * ELECTRICITY_PRICE_PER_KWH;

    const userAnswers = await prisma.propertySpecificAnswer.findMany({
      where: { userId: dummyUser.id },
      include: { question: true }
    });

    const answersContext = userAnswers.map(answer => 
      `Question: ${answer.question.question}\nAnswer: ${answer.answer}`
    ).join('\n\n');

    const prompt = `Based on the following information about a bank branch's energy usage:

${answersContext}

The total energy cost for this bank branch is $${totalEnergyCost.toFixed(2)} per year.

Please estimate the percentage of money spent on energy for each of these areas in the bank branch:
${areas.join(', ')}

Provide your answer as a JSON object with area names as keys and percentage values (without the % symbol) as values. The percentages should sum to 100.`;

    const response = await openai.chat.completions.create({
      model: "gpt-4",
      messages: [{ role: "user", content: prompt }],
      functions: [
        {
          name: "estimate_energy_consumption",
          description: "Estimate the percentage of energy consumption for different areas in a bank branch",
          parameters: {
            type: "object",
            properties: {
              CustomerServiceAreas: { type: "number" },
              Offices: { type: "number" },
              ATMs: { type: "number" },
              Vaults: { type: "number" },
              HVACSystems: { type: "number" },
              Lighting: { type: "number" },
              SecuritySystems: { type: "number" },
              ITServerRooms: { type: "number" }
            },
            required: areas
          }
        }
      ],
      function_call: { name: "estimate_energy_consumption" },
      max_tokens: 150,
      temperature: 0.5,
    });

    if (!response.choices || response.choices.length === 0 || !response.choices[0].message.function_call) {
      throw new Error("OpenAI API returned an unexpected response format");
    }

    const functionCallResult = response.choices[0].message.function_call;
    const percentages = JSON.parse(functionCallResult.arguments);

    const consumptionByArea = areas.map(area => ({
      area,
      percentage: percentages[area],
      cost: (percentages[area] / 100) * totalEnergyCost
    }));

    return consumptionByArea;
  } catch (error) {
    console.error('Error calculating percentage consumption by area:', error);
    throw error;
  }
}

module.exports = {
  getPercentageConsumptionByArea
};
