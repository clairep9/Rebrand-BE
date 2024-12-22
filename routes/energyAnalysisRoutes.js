// routes/energyAnalysisRoutes.js
const express = require('express');
const router = express.Router();
const { analyzeAreaConsumption } = require('../controllers/energyAnalysisController');

// Define your routes here
router.get('/analyze-area/:area', async (req, res) => {
  try {
    const area = req.params.area.trim();

    if (!area) {
      return res.status(400).json({ message: 'Area parameter is required' });
    }

    const analysis = await analyzeAreaConsumption(area);
    res.json(analysis);
  } catch (error) {
    console.log(error)
    console.error('Error in energy analysis route:', error);
    res.status(500).json({ 
      message: 'Server error during energy analysis',
      details: error.message
    });
  }
});

module.exports = router; // Make sure this is exporting the router instance
