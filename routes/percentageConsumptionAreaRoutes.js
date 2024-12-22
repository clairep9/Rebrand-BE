const express = require('express');
const router = express.Router();
const { getPercentageConsumptionByArea } = require('../controllers/percentageConsumptionArea');

// Route to get percentage consumption by area
router.get('/percentage-consumption', async (req, res) => {
  try {
    const consumptionData = await getPercentageConsumptionByArea();
    res.status(200).json(consumptionData);
  } catch (error) {
    console.error('Error getting percentage consumption by area:', error);
    res.status(500).json({ error: 'Error getting percentage consumption data', message: error.message });
  }
});

module.exports = router;
