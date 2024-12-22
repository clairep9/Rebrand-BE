const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const getLatestEntry = async () => {
  const latestEntry = await prisma.dummyUsage.findFirst({
    orderBy: {
      timestamp: 'desc',
    },
  });

  if (!latestEntry) {
    throw new Error('No data available');
  }

  return latestEntry.timestamp;
};

const getYearlyUsageData = async (req, res) => {
  try {
    const latestEntryDate = new Date(await getLatestEntry());
    const startDate = new Date(latestEntryDate);
    startDate.setFullYear(startDate.getFullYear() - 1);
    startDate.setDate(1);
    startDate.setHours(0, 0, 0, 0);

    const usageData = await prisma.$queryRaw`
      SELECT 
        date_trunc('month', timestamp) AS month, 
        SUM("usageAmountKwh") AS "total_usage"
      FROM "DummyUsage"
      WHERE timestamp >= ${startDate} AND timestamp <= ${latestEntryDate}
      GROUP BY month
      ORDER BY month ASC;
    `;

    res.json(usageData);
  } catch (err) {
    console.error(err);
    res.status(500).send('Server error');
  }
};

const getMonthlyUsageData = async (req, res) => {
  try {
    const { year, month } = req.query;

    if (!year || !month) {
      return res.status(400).send('Year and month are required');
    }

    const startDate = new Date(parseInt(year), parseInt(month) - 1, 1);
    let endDate = new Date(parseInt(year), parseInt(month), 0); // Last day of the requested month

    const latestEntryDate = new Date(await getLatestEntry());
    
    if (endDate > latestEntryDate) {
      endDate = latestEntryDate;
    }
    endDate.setUTCHours(23, 59, 59, 999);
    const usageData = await prisma.$queryRaw`
      SELECT 
        date_trunc('day', timestamp) AS day, 
        SUM("usageAmountKwh") AS "total_usage"
      FROM "DummyUsage"
      WHERE timestamp >= ${startDate} AND timestamp <= ${endDate}
      GROUP BY day
      ORDER BY day ASC;
    `;

    res.json(usageData);
    console.log('Fetched usage data:', usageData);
  } catch (err) {
    console.error(err);
    res.status(500).send('Server error');
  }
};

const getDailyUsageData = async (req, res) => {
  try {
    const { date } = req.query;

    if (!date) {
      return res.status(400).send('Date is required');
    }

    let startDate = new Date(date);
    startDate.setHours(0, 0, 0, 0);
    // startDate.setDate(startDate.getDate() + 1)
    let endDate = new Date(startDate);
    endDate.setHours(23, 59, 59, 999);

    const latestEntryDate = new Date(await getLatestEntry());
    
    if (endDate > latestEntryDate) {
      endDate = latestEntryDate;
    }

    const usageData = await prisma.$queryRaw`
      SELECT 
        date_trunc('hour', timestamp) AS hour, 
        SUM("usageAmountKwh") AS "total_usage"
      FROM "DummyUsage"
      WHERE timestamp >= ${startDate} AND timestamp <= ${endDate}
      GROUP BY hour
      ORDER BY hour ASC;
    `;

    res.json(usageData);
    console.log('Fetched daily usage data:', usageData);
  } catch (err) {
    console.error(err);
    res.status(500).send('Server error');
  }
};

module.exports = {
  getYearlyUsageData,
  getMonthlyUsageData,
  getDailyUsageData,
};
