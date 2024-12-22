const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// Function to get all property-specific questions
const getAllPropertySpecificQuestions = async (req, res) => {
  try {
    const questions = await prisma.propertySpecificQuestion.findMany();
    res.json(questions);
  } catch (error) {
    console.error('Error fetching property-specific questions:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get a property-specific question by ID
const getPropertySpecificQuestionById = async (req, res) => {
  try {
    const question = await prisma.propertySpecificQuestion.findUnique({
      where: { id: parseInt(req.params.id) }
    });
    if (!question) {
      return res.status(404).json({ message: 'Property-specific question not found' });
    }
    res.json(question);
  } catch (error) {
    console.error('Error fetching property-specific question:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to create a new property-specific question
const createPropertySpecificQuestion = async (req, res) => {
  try {
    const { question, validChoices, consumptionAreaId } = req.body;
    const newQuestion = await prisma.propertySpecificQuestion.create({
      data: {
        question,
        validChoices,
        consumptionAreaId: parseInt(consumptionAreaId)
      }
    });
    res.status(201).json(newQuestion);
  } catch (error) {
    console.error('Error creating property-specific question:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to update a property-specific question
const updatePropertySpecificQuestion = async (req, res) => {
  try {
    const { question, validChoices } = req.body;
    const updatedQuestion = await prisma.propertySpecificQuestion.update({
      where: { id: parseInt(req.params.id) },
      data: { question, validChoices }
    });
    res.json(updatedQuestion);
  } catch (error) {
    console.error('Error updating property-specific question:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to delete a property-specific question
const deletePropertySpecificQuestion = async (req, res) => {
  try {
    await prisma.propertySpecificQuestion.delete({
      where: { id: parseInt(req.params.id) }
    });
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting property-specific question:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = {
  getAllPropertySpecificQuestions,
  getPropertySpecificQuestionById,
  createPropertySpecificQuestion,
  updatePropertySpecificQuestion,
  deletePropertySpecificQuestion
};
