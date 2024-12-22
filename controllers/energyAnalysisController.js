const { PrismaClient } = require('@prisma/client');
const openai = require('../config/openai');
const moment = require('moment');

const prisma = new PrismaClient();

// Cache to store analysis results
const analysisCache = {};

// Helper function to check if cached result is still valid
function isCacheValid(cachedDate) {
  const now = moment();
  const cacheDate = moment(cachedDate);
  return now.diff(cacheDate, 'days') < 14;
}

const areasInfo = [
  {
      "area": "CustomerServiceAreas",
      "percentage": 15,
      "cost": 27327.92279939984
  },
  {
      "area": "Offices",
      "percentage": 10,
      "cost": 18218.61519959989
  },
  {
      "area": "ATMs",
      "percentage": 5,
      "cost": 9109.307599799946
  },
  {
      "area": "Vaults",
      "percentage": 10,
      "cost": 18218.61519959989
  },
  {
      "area": "HVACSystems",
      "percentage": 20,
      "cost": 36437.23039919978
  },
  {
      "area": "Lighting",
      "percentage": 25,
      "cost": 45546.53799899973
  },
  {
      "area": "SecuritySystems",
      "percentage": 5,
      "cost": 9109.307599799946
  },
  {
      "area": "ITServerRooms",
      "percentage": 10,
      "cost": 18218.61519959989
  }
]

async function analyzeAreaConsumption(area) {
  try {
    const normalizedArea = area.trim().split(" ").join("").toLowerCase();
    console.log('Searching for area:', normalizedArea);
    const areaData = areasInfo.find(item => item.area.toLowerCase() === normalizedArea);

    if (!areaData) {
      throw new Error(`Area "${area}" not found in consumption data`);
    }

    console.log('Found data for area:', areaData);

    // Check if we have a valid cached result
    if (analysisCache[normalizedArea] && isCacheValid(analysisCache[normalizedArea].timestamp)) {
      console.log('Returning cached result for:', normalizedArea);
      return analysisCache[normalizedArea].result;
    }

    const percentage = areaData.percentage;
    const yearlyCost = areaData.cost;
    const monthlyCost = yearlyCost / 12;

    const prompt = `Analyze the energy cost for the "${area}" area in a bank, which accounts for ${percentage.toFixed(2)}% of the total energy cost, approximately $${yearlyCost.toFixed(2)} per year. Provide a 160-word analysis of this cost and a separate list of 3 actionable tips to reduce energy usage and save money in this area. Format the response as a JSON object with two keys: "analysis" and "tips", where "tips" is an array of strings.

    Structure the analysis as follows:
    1. Cost Percentage: Highlight that this area accounts for ${percentage.toFixed(2)}% of the total energy cost, approximately $${yearlyCost.toFixed(2)} per year.
    2. Monthly Cost: Estimate the monthly cost for this area, which is approximately $${monthlyCost.toFixed(2)} per month.
    3. Potential Reasons: Discuss possible reasons why this area consumes this percentage of the energy budget.
    4. Comparison: If applicable, compare this area's energy cost to industry standards or other areas of the bank.
    5. Financial Impact: Explain the impact of this area's energy cost on the bank's overall energy expenses and potential for savings. Use a metaphor to illustrate the significance of the monthly cost. Choose an appropriate metaphor based on the area:
       - For CustomerServiceAreas: "This monthly cost is equivalent to the processing fees for X number of loans, highlighting the impact on customer-facing operations."
       - For Offices: "This monthly cost could cover the office supplies for X employees for a year, emphasizing the scale of energy expenses in administrative areas."
       - For ATMs: "This monthly cost is comparable to the maintenance cost of X ATMs, underlining the energy consumption of these 24/7 services."
       - For Vaults: "This monthly cost is similar to the insurance premium for securing a significant portion of the bank's assets, emphasizing the importance of efficient energy use even in high-security areas."
       - For HVACSystems: "This monthly cost is equivalent to the energy bill of X average households, illustrating the substantial impact of climate control in the bank."
       - For Lighting: "This monthly cost could illuminate X miles of city streets, demonstrating the scale of the bank's lighting energy use."
       - For SecuritySystems: "This monthly cost is comparable to the salary of X security guards, highlighting the energy intensity of maintaining round-the-clock security."
       - For ITServerRooms: "This monthly cost could power X high-end computers for a year, underscoring the energy demands of the bank's digital infrastructure."
    6. Long-term Considerations: Briefly discuss how reducing energy consumption in this area could affect long-term costs and sustainability goals.

    For the tips:
    - Focus on specific, actionable advice that can lead to immediate and long-term cost savings while being energy-efficient and environmentally friendly.
    - Include a mix of no-cost behavioral changes, low-cost upgrades, and potential larger investments if applicable.
    - Quantify potential savings where possible (e.g., "Switching to LED bulbs could save up to 75% on lighting costs in this area and reduce carbon emissions").
    - Consider both energy efficiency improvements and changes in usage patterns that reduce environmental impact.
    - Include at least one tip about employee education or engagement in energy-saving and eco-friendly practices.
    - Prioritize solutions that are both cost-effective and have a positive environmental impact.
    - Suggest ways to measure and track the environmental benefits of implemented changes.

    Present the analysis and tips in an engaging and accessible manner for a general audience, emphasizing the potential for cost savings, improved efficiency, and positive environmental impact.`;

    const response = await openai.chat.completions.create({
      model: "gpt-4",
      messages: [{ role: "user", content: prompt }],
      max_tokens: 1000,
      n: 1,
      temperature: 0.7,
    });

    console.log('OpenAI response:', response);

    const result = JSON.parse(response.choices[0].message.content.trim());
    console.log('Parsed result:', result);

    // Cache the result
    analysisCache[normalizedArea] = {
      result: result,
      timestamp: new Date()
    };

    return result;
  } catch (error) {
    console.log(error)
    console.error("Error analyzing area consumption:", error);
    throw new Error("Server error during energy analysis");
  }
}

module.exports = {
  analyzeAreaConsumption
};

// Close the Prisma client when the Node.js process ends
process.on('beforeExit', async () => {
  await prisma.$disconnect();
});
