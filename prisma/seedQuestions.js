const { PrismaClient } = require('@prisma/client');
const fs = require('fs');
const path = require('path');

const prisma = new PrismaClient();

async function seedQuestions() {
  try {
    // Delete all existing answers first
    await prisma.answer.deleteMany();
    console.log('All existing answers deleted');

    // Then delete all existing questions
    await prisma.question.deleteMany();
    console.log('All existing questions deleted');

    const jsonPath = path.join
    const questionsData = JSON.parse(fs.readFileSync(path.join(__dirname, '../dummy-data/questions.json'), 'utf8'));

    for (const q of questionsData) {
      await prisma.question.create({
        data: {
          question: q.question,
          validChoices: JSON.stringify(q.options)
        }
      });
    }
    console.log('Questions seeded successfully');
  } catch (error) {
    console.error('Error seeding questions:', error);
  }
}

seedQuestions();
