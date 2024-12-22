// app.js
const express = require('express');
const cors = require('cors');
const app = express();

// Use CORS middleware
// app.use(cors({
//   origin: '*', // Allow only this origin
//   methods: ['GET', 'POST', 'PUT', 'DELETE'], // Allowed methods
//   allowedHeaders: ['Content-Type', 'Authorization'] // Allowed headers
// }));

app.use(cors())


// Use JSON middleware to parse request bodies
app.use(express.json());

// Import and use routes
const userRoutes = require('./routes/userRoutes');
const questionRoutes = require('./routes/questionRoutes');
const answerRoutes = require('./routes/answerRoutes');
const userResponseRoutes = require('./routes/userResponseRoutes');
const emissionComplianceRoutes = require('./routes/emissionComplianceRoutes');
const energyAnalysisRoutes = require('./routes/energyAnalysisRoutes');
const dataAggregRoutes = require('./routes/dataAggregRoutes');
const propertyTypeRoutes = require('./routes/propertyTypeRoutes');
const consumptionAreaRoutes = require('./routes/consumptionAreaRoutes');
const propertySpecificQuestionRoutes = require('./routes/propertySpecificQuestionRoutes');
const propertySpecificAnswerRoutes = require('./routes/propertySpecificAnswerRoutes');
const percentageConsumptionAreaRoutes = require('./routes/percentageConsumptionAreaRoutes');

// Register routes with the application
app.use('/api/users', userRoutes);
app.use('/api/questions', questionRoutes);
app.use('/api/answers', answerRoutes);
app.use('/api/user-responses', userResponseRoutes);
app.use('/api/emission-compliance', emissionComplianceRoutes);
app.use('/api/energy-analysis', energyAnalysisRoutes);
app.use('/api/data-aggregation', dataAggregRoutes);
app.use('/api/property-types', propertyTypeRoutes);
app.use('/api/consumption-areas', consumptionAreaRoutes);
app.use('/api/property-specific-questions', propertySpecificQuestionRoutes);
app.use('/api/property-specific-answers', propertySpecificAnswerRoutes);
app.use('/api/percentage-consumption-area', percentageConsumptionAreaRoutes);

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

module.exports = app;
