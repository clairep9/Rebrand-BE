const { PrismaClient } = require('@prisma/client');
const userController = require('../../controllers/userController');

// Mock PrismaClient
jest.mock('@prisma/client', () => {
  const mockCreate = jest.fn();
  const mockFindUnique = jest.fn();
  return {
    PrismaClient: jest.fn().mockImplementation(() => ({
      user: {
        create: mockCreate,
        findUnique: mockFindUnique,
      },
    })),
  };
});

describe('userController', () => {
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

  describe('createUser', () => {
    it('should create a new user successfully', async () => {
      const userData = {
        organizationName: 'Test Org',
        firstName: 'John',
        lastName: 'Doe',
        contactEmail: 'john@example.com',
        propertyType: 'Commercial',
        buildingSize: 1000,
        buildingCode: 'ABC123',
        intensityLimit: 50,
        utilityProvider: 'Test Utility',
        accountNumber: '12345',
      };
      mockReq.body = userData;

      prisma.user.create.mockResolvedValue({ id: 1, ...userData });

      await userController.createUser(mockReq, mockRes);

      expect(prisma.user.create).toHaveBeenCalledWith({ data: userData });
      expect(mockRes.status).toHaveBeenCalledWith(201);
      expect(mockRes.json).toHaveBeenCalledWith(expect.objectContaining(userData));
    });

    it('should handle errors when creating a user', async () => {
      mockReq.body = {};
      const error = new Error('Creation failed');
      prisma.user.create.mockRejectedValue(error);

      await userController.createUser(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(400);
      expect(mockRes.json).toHaveBeenCalledWith({ error: error.message });
    });
  });

  describe('getUserById', () => {
    it('should get a user by ID successfully', async () => {
      const userId = '1';
      const userData = { id: 1, firstName: 'John', lastName: 'Doe' };
      mockReq.params = { id: userId };

      prisma.user.findUnique.mockResolvedValue(userData);

      await userController.getUserById(mockReq, mockRes);

      expect(prisma.user.findUnique).toHaveBeenCalledWith({ where: { id: 1 } });
      expect(mockRes.status).toHaveBeenCalledWith(200);
      expect(mockRes.json).toHaveBeenCalledWith(userData);
    });

    it('should return 404 if user is not found', async () => {
      mockReq.params = { id: '999' };

      prisma.user.findUnique.mockResolvedValue(null);

      await userController.getUserById(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(404);
      expect(mockRes.json).toHaveBeenCalledWith({ error: 'User not found' });
    });
  });

  describe('signIn', () => {
    it('should sign in a user successfully', async () => {
      const userData = { id: 1, contactEmail: 'john@example.com' };
      mockReq.body = { contactEmail: 'john@example.com' };

      prisma.user.findUnique.mockResolvedValue(userData);

      await userController.signIn(mockReq, mockRes);

      expect(prisma.user.findUnique).toHaveBeenCalledWith({ where: { contactEmail: 'john@example.com' } });
      expect(mockRes.status).toHaveBeenCalledWith(200);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Sign-in successful', user: userData });
    });

    it('should return 400 if user is not found', async () => {
      mockReq.body = { contactEmail: 'nonexistent@example.com' };

      prisma.user.findUnique.mockResolvedValue(null);

      await userController.signIn(mockReq, mockRes);

      expect(mockRes.status).toHaveBeenCalledWith(400);
      expect(mockRes.json).toHaveBeenCalledWith({ message: 'Invalid credentials' });
    });
  });
});
