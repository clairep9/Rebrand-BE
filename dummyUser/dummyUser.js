const fs = require("fs");
const path = require("path");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function createDummyUser() {
  try {
    // Delete existing property specific answers
    await prisma.propertySpecificAnswer.deleteMany();
    console.log('All property-specific answers deleted');

    // Delete existing answers
    await prisma.answer.deleteMany();
    console.log('All answers deleted');

    // Delete existing usage data
    await prisma.dummyUsage.deleteMany();
    console.log('All dummy usage records deleted');

//Delete compliance reports
await prisma.complianceReport.deleteMany();
console.log("All compliance reports deleted")

    // Delete user data
    await prisma.user.deleteMany();
    console.log('All users deleted');

    const propertyTypeName = "Bank Branch";

    // Ensure property type exists
    let propertyType = await prisma.propertyType.findUnique({
      where: { name: propertyTypeName },
    });

    if (!propertyType) {
      throw new Error(`Property type "${propertyTypeName}" not found.`)
    }

    // Create dummy user
    const user = await prisma.user.create({
      data: {
        organizationName: "Nexis Financial Bank",
        firstName: "Michael",
        lastName: "Doe",
        contactEmail: "john.doe@example.com",
        propertyType: { connect: { id: propertyType.id }, 
      },
        buildingSize: 27000,
        utilityProvider: "Con Edison",
        buildingCode: "B",
        accountNumber: "1234567891234",
        firebaseUid: "dummyFirebaseUid123",
        emissionFactor: 0.00987,
        emissionLimit: 0.00846,
      },
    });

    console.log("Dummy user created:", user);

    // Insert dummy usage data
    const jsonPath = path.join(__dirname, "..", "dummy-data", "production-demo.json");
    const jsonData = JSON.parse(fs.readFileSync(jsonPath, "utf8"));

    for (const item of jsonData) {
      await prisma.dummyUsage.create({
        data: {
          timestamp: new Date(item.timestamp),
          usageAmountKwh: item.usage_amount_kwh,
          userId: user.id,
        },
      });
    }

    console.log(`${jsonData.length} dummy usage records added successfully`);
 
    // Insert answers for general questions
    const questions = await prisma.question.findMany();

    for(let question of questions){
      // Parse the validChoices to get the array of options
      const validOptions = JSON.parse(question.validChoices);

      // Select a random answer from the valid options
      const randomAnswer =
        validOptions[Math.floor(Math.random() * validOptions.length)];

      // Create the answer
      await prisma.answer.create({
        data: {
          answer: randomAnswer,
          user:  {connect: {id: user.id}},
          question: {connect: {id: question.id}}, 
        },
      });
    };

    console.log("Dummy answers inserted successfully.");

    // Insert randomized answers for property specific questions
    const propertySpecificQuestions = await prisma.propertySpecificQuestion.findMany({
      where: {
        consumptionArea: {
          propertyTypeId: propertyType.id,
        },
      },
      include: {
        consumptionArea: true,
      },
    });

    for (let question of propertySpecificQuestions) {
      const validOptions = JSON.parse(question.validChoices);
      const randomAnswer = validOptions[Math.floor(Math.random() * validOptions.length)];

      await prisma.propertySpecificAnswer.create({
        data: {
          answer: randomAnswer,
          userId: user.id,
          questionId: question.id,
        },
      });
    }

    console.log("Property-specific answers inserted successfully.");
    console.log("All dummy data has been created successfully.");
  } catch (error) {
    console.error("Error creating dummy data:", error);
  } finally {
    await prisma.$disconnect();
  }
}

createDummyUser();
