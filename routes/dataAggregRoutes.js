const express = require('express');
const { 
     getYearlyUsageData,
    //  getThreeMonthUsageData
     getMonthlyUsageData,
     
     getDailyUsageData 
    } = require('../controllers/dataAggregController');

const router = express.Router();

 router.get('/usage-data-by-year', getYearlyUsageData)
//  router.get('/usage-data-three-month', getThreeMonthUsageData)
  router.get('/usage-data-monthly', getMonthlyUsageData)

  router.get('/usage-data-daily', getDailyUsageData)

module.exports = router;
