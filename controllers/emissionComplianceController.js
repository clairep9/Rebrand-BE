const { PrismaClient } = require('@prisma/client');
const openai = require('../config/openai');
const { getPercentageConsumptionByArea } = require('./percentageConsumptionArea');

const prisma = new PrismaClient();
const organizationName = "Nexis Financial Bank";

async function generateAndSaveComplianceReport() {
  try {
    // Fetch the only user in the user table
    const user = await prisma.user.findFirst({
      include: { 
        dummyUsage: true,
        answers: {
          include: {
            question: true
          }
        }
      }
    });

    if (!user) {
      throw new Error("User not found");
    }

    const existingReport = await prisma.complianceReport.findFirst({
      where: { userId: user.id }
    });

    if (existingReport) {
      console.log("Report already exists.");
      return { report: JSON.parse(existingReport.reportContent) };
    }

    // Calculate total energy usage
    const totalEnergyUsage = user.dummyUsage.reduce((sum, usage) => sum + usage.usageAmountKwh, 0);

    // Prepare the prompt and generate the report
    const prompt = `Provide a comprehensive, college-level academic report analyzing ${organizationName}'s energy consumption and NYC Local Law 97 compliance:

    Data for ${organizationName}:
    - Property type: Bank Branch
    - Building size: ${user.buildingSize} sq ft
    - Emission limit (2024-2029): ${user.emissionLimit} tCO2e/sq ft
    - Emission limit (2030-2034): 0.004036172 tCO2e/sq ft
    - Emission factor: ${user.emissionFactor} tCO2e/kWh
    - Total energy usage: ${totalEnergyUsage} kWh
    - Allowable emissions (2024-2029): ${user.buildingSize * user.emissionLimit} tCO2e
    - Total emissions: ${totalEnergyUsage * user.emissionFactor} tCO2e
    - Excess emissions (2024-2029): ${Math.max(totalEnergyUsage * user.emissionFactor - user.buildingSize * user.emissionLimit, 0)} tCO2e
    - Calculated carbon penalty (2024-2029): $${Math.max(totalEnergyUsage * user.emissionFactor - user.buildingSize * user.emissionLimit, 0) * 268}
    - Allowable emissions (2030-2034): ${user.buildingSize * 0.004036172} tCO2e
    - Excess emissions (2030-2034): ${Math.max(totalEnergyUsage * user.emissionFactor - user.buildingSize * 0.004036172, 0)} tCO2e
    - Calculated carbon penalty (2030-2034): $${Math.max(totalEnergyUsage * user.emissionFactor - user.buildingSize * 0.004036172, 0) * 268}
    - Report submitted: ${false ? 'Yes' : 'No'}

    Energy Consumption Breakdown:
    ${await getPercentageConsumptionByArea().then(area => area.map(item => `${item.area}: ${item.percentage}% (Cost: $${item.cost.toFixed(2)})`).join('\n'))}

    Additional Information:
    ${user.answers.map(answer => `Question: ${answer.question.question}\nAnswer: ${answer.answer}`).join('\n')}

    Provide a well-structured, academic report with the following sections:

    1. Executive Summary:
       Present a brief overview of key findings, including total energy usage, compliance status, and total carbon penalty for ${user.organizationName || "Your organization"} under NYC Local Law 97. Limit this to 3-4 sentences.

    2. Carbon Penalty Analysis:
       2.1 Emissions Penalty (2024-2029):
           - Allowable emissions calculation: (Building Size) * (Emission Limit 2024-2029)
           - Total emissions calculation: (Total Usage in kWh) * (Emission Factor)
           - Excess emissions calculation: (Total Emissions - Allowable Emissions 2024-2029)
           - Penalty rate for excess emissions: $268 per metric ton of CO2e
           - Total emissions penalty (2024-2029)
       2.3 Emissions Penalty (2030-2034):
           - Allowable emissions calculation: (Building Size) * (Emission Limit 2030-2034)
           - Total emissions calculation: (Total Usage in kWh) * (Emission Factor)
           - Excess emissions calculation: (Total Emissions - Allowable Emissions 2030-2034)
           - Penalty rate for excess emissions: $268 per metric ton of CO2e
           - Total emissions penalty (2030-2034)
       2.4 Total Combined Penalty for Each Period

    3. Compliance Status Assessment:
       Provide a detailed evaluation of ${organizationName}'s current compliance status with NYC Local Law 97. Include:
       - Analysis of energy consumption patterns
       - Comparison of current emissions to allowable emissions for both periods
       - Discussion of factors contributing to compliance or non-compliance
       - Potential long-term implications of the current compliance status

    4. Recommendations:
       Provide six specific, actionable recommendations for reducing energy usage and improving compliance with NYC Local Law 97. These recommendations should be tailored specifically to ${organizationName}'s operations as a bank, focusing on the areas of highest energy consumption and beneficial electrification opportunities. Ensure recommendations include:

       - Detailed steps for implementing beneficial electrification in a banking environment, such as transitioning from fossil fuel-based systems to electric systems (e.g., electric HVAC systems, heat pumps for space heating and cooling).
       - Specific technologies and practices that can reduce energy usage in a bank setting, like upgrading to high-efficiency HVAC systems, LED lighting for both interior and exterior (including ATM areas and signage), and advanced energy management systems for multiple branch locations.
       - Financial incentives and programs available for energy-efficient upgrades and electrification in the banking sector, including government rebates, grants, and utility incentives.
       - Potential cost savings and return on investment (ROI) from implementing these recommendations, considering both upfront costs and long-term savings, with a focus on how these align with the bank's financial objectives.
       - Strategies for optimizing energy use in a 24/7 banking environment, such as smart power management for ATMs and computer systems, demand response programs, peak load management, and integrating renewable energy sources (e.g., solar panels on bank rooftops or parking structures).
       - Monitoring and maintenance practices to ensure the sustained performance of energy-efficient and electrified systems across multiple bank branches, including the use of centralized building management systems.

       Additionally, include recommendations specific to the banking industry such as:
       - Implementing energy-efficient data centers and server rooms for secure banking operations.
       - Optimizing energy use in customer-facing areas like teller stations and consultation rooms.
       - Strategies for reducing energy consumption in cash handling and security systems.
       - Green banking initiatives that can both reduce energy consumption and appeal to environmentally conscious customers.

    Additional Notes:
    - The penalties for the second period (2030-2034) are expected to be significantly higher than those for the first period (2024-2029) due to the lower emissions limit for 2030-2034.
    - The penalties for 2030-2034 are based on the assumption that the organization will not make any changes to reduce emissions in that period. If the organization decides to reduce emissions, the penalty will decrease. Conversely, if emissions increase, the penalty will be higher.

    Format the report as a valid JSON object with the following structure:
    {
      "complianceStatus": "...",
      "executiveSummary": "...",
      "carbonPenaltyAnalysis": {
        "emissionsPenalty2024_2029": "...",
        "emissionsPenalty2030_2034": "...",
       
      },
      "complianceStatusAssessment": "...",
      "recommendations": [
        "...",
        "...",
        "...",
        "...",
        "...",
        "..."
      ]
    }

    Ensure each section maintains an objective, academic tone throughout the report, referring to ${organizationName} by name rather than using second-person pronouns. The entire response must be a valid JSON object. The 'complianceStatus' field must be exactly one sentence stating only whether ${organizationName} is in compliance with NYC Local Law 97 for the 2024 - 2029 period or not. Do not include any additional information or explanation in this field.

    Important: When mentioning any numerical values in your response, including those in the carbonPenaltyAnalysis section, please format them with commas for better readability (e.g., 1,000,000 instead of 1000000). This applies to all numerical values, including those in the data provided above.`;

    const response = await openai.chat.completions.create({
      model: "gpt-4",
      messages: [{ role: "user", content: prompt }],
      functions: [
        {
          name: "generate_compliance_report",
          description: "Generate a compliance report based on the given data",
          parameters: {
            type: "object",
            properties: {
              complianceStatus: {
                type: "string",
                description: "A single sentence stating whether the organization is in compliance with NYC Local Law 97 or not"
              },
              executiveSummary: {
                type: "string",
                description: "A brief overview of key findings"
              },
              carbonPenaltyAnalysis: {
                type: "object",
                properties: {
                  emissionsPenalty2024_2029: { type: "string" },
                  emissionsPenalty2030_2034: { type: "string" },
                  totalCombinedPenalty2024_2029: { type: "string" },
                  totalCombinedPenalty2030_2034: { type: "string" }
                }
              },
              complianceStatusAssessment: {
                type: "string",
                description: "Detailed evaluation of the organization's current compliance status"
              },
              recommendations: {
                type: "array",
                items: { type: "string" },
                description: "Six specific, actionable recommendations for reducing energy usage and improving compliance"
              }
            },
            required: ["complianceStatus", "executiveSummary", "carbonPenaltyAnalysis", "complianceStatusAssessment", "recommendations"]
          }
        }
      ],
      function_call: { name: "generate_compliance_report" },
      max_tokens: 3000,
      temperature: 0.7
    });

    if (!response.choices || response.choices.length === 0 || !response.choices[0].message.function_call) {
      throw new Error("OpenAI API returned an unexpected response format");
    }

    const functionCallResult = response.choices[0].message.function_call;
    const report = JSON.parse(functionCallResult.arguments);

    // Save the generated report to the database
    await prisma.complianceReport.create({
      data: {
        userId: user.id,
        reportContent: JSON.stringify(report)
      }
    });
    console.log(report)

    console.log("Compliance report generated and saved successfully.");
    return { report };

  } catch (error) {
    console.error("Error generating and saving compliance report:", error);
    if (error.response) {
      console.error("OpenAI API error:", error.response.data);
    }
    throw new Error("Error generating compliance data: " + error.message);
  } finally {
    await prisma.$disconnect();
  }
}

// Export the function
module.exports = { generateAndSaveComplianceReport };
