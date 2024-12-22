const { PrismaClient } = require('@prisma/client');
const questionController = require('../../controllers/questionController');

// Mock PrismaClient
jest.mock('@prisma/client', () => {
  const mockFindMany = jest.fn();
  const mockCreate = jest.fn();
  const mockFindUnique = jest.fn();
  const mockUpdate = jest.fn();
  const mockDelete = jest.fn();
  return {
    PrismaClient: jest.fn().mockImplementation(() => ({
      question: {
        findMany: mockFindMany,
        create: mockCreate,
        findUnique: mockFindUnique,
        update: mockUpdate,
        delete: mockDelete,
      },
    })),
  };
});

describe('questionController', () => {
  let mockReq;
  let mockRes;
  let prisma;

  beforeEach(() => {
    mockReq = {
      body: {},
      params: {},
    };
    mockRes = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };
    prisma = new PrismaClient();
  });

  describe('getAllQuestions', () => {
    it('should return all questions', async () => {
      const mockQuestions = [{ id: 1, question: 'Test Question' }];
      prisma.question.findMany.mockResolvedValue(mockQuestions);

      await questionController.getAllQuestions(mockReq, mockRes);

      expect(prisma.question.findMany).toHaveBeenCalled();
      expect(mockRes.status).toHaveBeenCalledWith(200);
      expect(mockRes.json).toHaveBeenCalledWith(mockQuestions);
    });

    it('should handle errors', async () => {
      prisma.question.findMany.mockRejectedValue(new Error('Database error'));

      await questionController.getAllQuestions(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(500);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Server error' });
    });
  });

  describe('createQuestion', () => {
    it('should create a new question', async () => {
      const newQuestion = { question: 'New Question', validChoices: '["Choice1", "Choice2"]' };
      mockReq.body = newQuestion;
      const createdQuestion = { id: 1, ...newQuestion };
      prisma.question.create.mockResolvedValue(createdQuestion);

      await questionController.createQuestion(mockReq, mockRes);

      expect(prisma.question.create).toHaveBeenCalledWith({ data: newQuestion });
      expect(mockRes.status).toHaveBeenCalledWith(201);
      expect(mockRes.json).toHaveBeenCalledWith(createdQuestion);
    });

    it('should handle errors', async () => {
      mockReq.body = { question: 'New Question' };
      prisma.question.create.mockRejectedValue(new Error('Database error'));

      await questionController.createQuestion(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(400);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Server error' });
    });
  });

  describe('getQuestionById', () => {
    it('should return a question by ID', async () => {
      const mockQuestion = { id: 1, question: 'Test Question' };
      mockReq.params.id = '1';
      prisma.question.findUnique.mockResolvedValue(mockQuestion);

      await questionController.getQuestionById(mockReq, mockRes);

      expect(prisma.question.findUnique).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(mockRes.status).toHaveBeenCalledWith(200);
      expect(mockRes.json).toHaveBeenCalledWith(mockQuestion);
    });

    it('should return 404 if question not found', async () => {
      mockReq.params.id = '999';
      prisma.question.findUnique.mockResolvedValue(null);

      await questionController.getQuestionById(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(404);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Question not found' });
    });
  });

  describe('updateQuestion', () => {
    it('should update an existing question', async () => {
      const updatedQuestion = { question: 'Updated Question', validChoices: '["Choice1", "Choice2"]' };
      mockReq.params.id = '1';
      mockReq.body = updatedQuestion;
      prisma.question.update.mockResolvedValue({ id: 1, ...updatedQuestion });

      await questionController.updateQuestion(mockReq, mockRes);

      expect(prisma.question.update).toHaveBeenCalledWith({
        where: { id: 1 },
        data: updatedQuestion
      });
      expect(mockRes.status).toHaveBeenCalledWith(200);
      expect(mockRes.json).toHaveBeenCalledWith({ id: 1, ...updatedQuestion });
    });

    it('should handle errors', async () => {
      mockReq.params.id = '1';
      mockReq.body = { question: 'Updated Question' };
      prisma.question.update.mockRejectedValue(new Error('Database error'));

      await questionController.updateQuestion(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(400);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Server error' });
    });
  });

  describe('deleteQuestion', () => {
    it('should delete a question', async () => {
      mockReq.params.id = '1';
      prisma.question.delete.mockResolvedValue({});

      await questionController.deleteQuestion(mockReq, mockRes);

      expect(prisma.question.delete).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(mockRes.status).toHaveBeenCalledWith(204);

    });

    it('should handle errors', async () => {
      mockReq.params.id = '1';
      prisma.question.delete.mockRejectedValue(new Error('Database error'));

      await questionController.deleteQuestion(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(400);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Server error' });
    });
  });
});
