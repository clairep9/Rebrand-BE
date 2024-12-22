const express = require('express');
const router = express.Router();
const { generateAndSaveComplianceReport } = require('../controllers/emissionComplianceController');

// Route to generate emissionCompliance
router.get('/emissionCompliance', async (req, res) => {
  try {
    const complianceData = await generateAndSaveComplianceReport();
    res.status(200).json({ complianceData });
  } catch (error) {
    console.error('Error generating compliance data:', error);
    res.status(500).json({ error: 'Error generating compliance data', message: error.message });
  }
});

module.exports = router;
