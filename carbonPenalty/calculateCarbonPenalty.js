const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function calculatePenalty(user) {
  try {
    if (!user || user.id === null || user.buildingSize === null || user.emissionLimit === null || user.emissionFactor === null) {
      throw new Error('Unable to calculate penalty: missing user data');
    }

    // Get total annual usage from DummyUsage table
    const totalUsage = await prisma.dummyUsage.aggregate({
      where: { userId: user.id },
      _sum: { usageAmountKwh: true },
    });

    if (!totalUsage._sum.usageAmountKwh) {
      throw new Error('Unable to calculate penalty: missing usage data');
    }

    // Calculate allowable emissions
    const allowableEmissions = user.buildingSize * user.emissionLimit;

    // Calculate total emissions
    const totalEmissions = totalUsage._sum.usageAmountKwh * user.emissionFactor;

    // Calculate excess emissions
    const excessEmissions = Math.max(totalEmissions - allowableEmissions, 0);

    // Calculate penalty for exceeding emissions limit
    const emissionsPenaltyRate = 268; // dollars per unit of excess emissions
    const emissionsPenalty = excessEmissions * emissionsPenaltyRate;

    // Calculate penalty for not submitting report
    const reportSubmitted = false; // Assume report was not submitted
    const monthsLate = 3; // Assume 3 months late for now
    const reportPenaltyRate = 0.5; // $0.50 per square foot per month
    const reportPenalty = reportSubmitted ? 0 : user.buildingSize * reportPenaltyRate * monthsLate;

    // Calculate total penalty
    const totalPenalty = emissionsPenalty + reportPenalty;

    return Math.max(totalPenalty, 0); // Ensure penalty is never negative
  } catch (error) {
    console.error('Error calculating penalty:', error);
    throw error;
  } finally {
    await prisma.$disconnect();
  }
}

module.exports = {
  calculatePenalty,
};
