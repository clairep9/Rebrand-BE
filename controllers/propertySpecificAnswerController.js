
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// Function to get all property-specific answers
const getAllPropertySpecificAnswers = async (req, res) => {
  try {
    const answers = await prisma.propertySpecificAnswer.findMany();
    res.json(answers);
  } catch (error) {
    console.error('Error fetching property-specific answers:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to get a property-specific answer by ID
const getPropertySpecificAnswerById = async (req, res) => {
  try {
    const answer = await prisma.propertySpecificAnswer.findUnique({
      where: { id: parseInt(req.params.id) }
    });
    if (!answer) {
      return res.status(404).json({ message: 'Property-specific answer not found' });
    }
    res.json(answer);
  } catch (error) {
    console.error('Error fetching property-specific answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to create a new answer
const createPropertySpecificAnswer = async (req, res) => {
  try {
    const { questionId, answer, userId } = req.body;
    const newAnswer = await prisma.propertySpecificAnswer.create({
      data: {
        answer,
        questionId: parseInt(questionId),
        userId: parseInt(userId)
      }
    });
    res.status(201).json(newAnswer);
  } catch (error) {
    console.error('Error creating property-specific answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to update a property-specific answer
const updatePropertySpecificAnswer = async (req, res) => {
  try {
    const { answer } = req.body;
    const updatedAnswer = await prisma.propertySpecificAnswer.update({
      where: { id: parseInt(req.params.id) },
      data: { answer }
    });
    res.json(updatedAnswer);
  } catch (error) {
    console.error('Error updating property-specific answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

// Function to delete a property-specific answer
const deletePropertySpecificAnswer = async (req, res) => {
  try {
    await prisma.propertySpecificAnswer.delete({
      where: { id: parseInt(req.params.id) }
    });
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting property-specific answer:', error);
    res.status(500).json({ message: 'Server error' });
  }
};

module.exports = {
  getAllPropertySpecificAnswers,
  getPropertySpecificAnswerById,
  createPropertySpecificAnswer,
  updatePropertySpecificAnswer,
  deletePropertySpecificAnswer
};
