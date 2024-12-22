const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const fs = require('fs');
const path = require('path');

// Load the intensity limit data
const intensityLimitData = JSON.parse(fs.readFileSync(path.join(__dirname, '../intensity-limit/intensity-limit.json'), 'utf8'));

// Function to calculate intensity limit
const calculateIntensityLimit = (propertyType, buildingSize) => {
  const propertyData = intensityLimitData[propertyType];
  if (!propertyData) {
    throw new Error(`Property type "${propertyType}" not found in intensity limit data`);
  }
  return propertyData.EmissionLimit * parseFloat(buildingSize);
};

const userController = {
  // Create a new user
  createUser: async (req, res) => {
    const { organizationName, firstName, lastName, email, propertyTypeId, buildingSize, utilityProvider, accountNumber } = req.body;
    try {

      const propertyType = await prisma.propertyType.findUnique({
        where: { id: propertyTypeId}
      })

      const propertyData = intensityLimitData[propertyType.name];
      if (!propertyData) {
        throw new Error(`Property type "${propertyType}" not found in intensity limit data`);
      }

      // Calculate the intensity limit
      const emissionLimit = calculateIntensityLimit(propertyType.name, buildingSize);
      
      // Get the building code and emission factor from the intensity limit data
      const buildingCode = propertyData.Code;
      const emissionFactor = propertyData.EmissionFactor;

      const newUser = await prisma.user.create({
        data: {
          organizationName,
          firstName,
          lastName,
          contactEmail: email,
          propertyType: { connect: {id: propertyTypeId}},
          buildingSize: parseFloat(buildingSize),
          buildingCode,
          emissionLimit,
          emissionFactor,
          utilityProvider,
          accountNumber,
          firebaseUid: req.body.firebaseUid // Add this line to get firebaseUid from request body
        }
      });
      res.status(201).json(newUser);
    } catch (error) {
      console.error('Error creating user:', error);
      res.status(400).json({ error: error.message });
    }
  },

  // Get a single user by ID
  getUserById: async (req, res) => {
    const { id } = req.params;
    try {
      const user = await prisma.user.findUnique({
        where: { id: parseInt(id) }
      });
      if (!user) {
        return res.status(404).json({ error: 'User not found' });
      }
      res.status(200).json(user);
    } catch (error) {
      console.error('Error fetching user:', error);
      res.status(500).json({ error: error.message });
    }
  },


  // Sign in
  signIn: async (req, res) => {
    const { firebaseUid } = req.body;
    try {
      const user = await prisma.user.findUnique({
        where: { firebaseUid }
      });
      if (!user) {
        return res.status(404).json({ message: 'User not found' });
      }
      res.status(200).json({ message: 'Sign-in successful', user });
    } catch (error) {
      console.error('Error signing in:', error);
      res.status(500).json({ error: error.message });
    }
  },

  getUserResponses: async (req, res) => {
    const { userId } = req.params;
    try {
      const specAnswers = await prisma.propertySpecificAnswer.findMany({
        where: { userId: parseInt(userId) },
        include: { 
          question: true
        }
      })

      res.status(200).json(specAnswers)
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  }
};



module.exports = userController;

