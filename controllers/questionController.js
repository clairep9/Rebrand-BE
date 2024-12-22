const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const questionController = {
  // Get all questions
  getAllQuestions: async (req, res) => {
    try {
      const questions = await prisma.question.findMany();
      res.status(200).json(questions);
    } catch (error) {
      console.error('Error fetching questions:', error);
      res.status(500).json({ message: 'Server error' });
    }
  },

  // Create a new question
  createQuestion: async (req, res) => {
    const { question, validChoices } = req.body;
    try {
      const newQuestion = await prisma.question.create({
        data: {
          question,
          validChoices
        }
      });
      res.status(201).json(newQuestion);
    } catch (error) {
      console.error('Error creating question:', error);
      res.status(400).json({ message: 'Server error' });
    }
  },

  // Get a single question by ID
  getQuestionById: async (req, res) => {
    const { id } = req.params;
    try {
      const question = await prisma.question.findUnique({
        where: { id: parseInt(id) }
      });
      if (!question) {
        return res.status(404).json({ message: 'Question not found' });
      }
      res.status(200).json(question);
    } catch (error) {
      console.error('Error fetching question:', error);
      res.status(500).json({ message: 'Server error' });
    }
  },

  // Update a question
  updateQuestion: async (req, res) => {
    const { id } = req.params;
    const { question, validChoices } = req.body;
    try {
      const updatedQuestion = await prisma.question.update({
        where: { id: parseInt(id) },
        data: { question, validChoices }
      });
      res.status(200).json(updatedQuestion);
    } catch (error) {
      console.error('Error updating question:', error);
      res.status(400).json({ message: 'Server error' });
    }
  },

  // Delete a question
  deleteQuestion: async (req, res) => {
    const { id } = req.params;
    try {
      await prisma.question.delete({
        where: { id: parseInt(id) }
      });
      res.status(204).send();
    } catch (error) {
      console.error('Error deleting question:', error);
      res.status(400).json({ message: 'Server error' });
    }
  }
};

module.exports = questionController;
