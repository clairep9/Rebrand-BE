const { PrismaClient } = require("@prisma/client");
const fs = require("fs");
const path = require("path");

const prisma = new PrismaClient();

async function seedPropertyTypesAndQuestions() {
  try {
    // Delete all existing property specific answers
    await prisma.propertySpecificAnswer.deleteMany();
    console.log('All property-specific answers deleted');

    // Delete all existing property specific questions
    await prisma.propertySpecificQuestion.deleteMany();
    console.log('All property-specific questions deleted');

    // Delete all existing consumptionAreas
    await prisma.consumptionArea.deleteMany();
    console.log('All consumption areas deleted');

    // List of property types

    const propertyTypes = [
      { id: 1, name: "Adult Education" },
      { id: 2, name: "Ambulatory Surgical Center" },
      { id: 3, name: "Automobile Dealership" },
      { id: 4, name: "Bank Branch" },
      { id: 5, name: "Bowling Alley" },
      { id: 6, name: "College/University" },
      { id: 7, name: "Convenience Store Without Gas Station" },
      { id: 8, name: "Courthouse" },
      { id: 9, name: "Data Center" },
      { id: 10, name: "Distribution Center" },
      { id: 11, name: "Enclosed Mall" },
      { id: 12, name: "Financial Office" },
      { id: 13, name: "Fitness Center/Health Club/Gym" },
      { id: 14, name: "Food Sales" },
      { id: 15, name: "Food Service" },
      { id: 16, name: "Hospital (General Medical & Surgical)" },
      { id: 17, name: "Hotel" },
      { id: 18, name: "K-12 School" },
      { id: 19, name: "Laboratory" },
      { id: 20, name: "Library" },
      { id: 21, name: "Lifestyle Center" },
      { id: 22, name: "Mailing Center/Post Office" },
      { id: 23, name: "Manufacturing/Industrial Plant" },
      { id: 24, name: "Medical Office" },
      { id: 25, name: "Movie Theater" },
      { id: 26, name: "Multifamily Housing" },
      { id: 27, name: "Museum" },
      { id: 28, name: "Non-Refrigerated Warehouse" },
      { id: 29, name: "Office" },
      { id: 30, name: "Other - Education" },
      { id: 31, name: "Other - Entertainment/Public Assembly" },
      { id: 32, name: "Other - Lodging/Residential" },
      { id: 33, name: "Other - Mall" },
      { id: 34, name: "Other - Public Services" },
      { id: 35, name: "Other - Recreation" },
      { id: 36, name: "Other - Restaurant/Bar" },
      { id: 37, name: "Other - Services" },
      { id: 38, name: "Other - Specialty Hospital" },
      { id: 39, name: "Other - Technology/Science" },
      { id: 40, name: "Outpatient Rehabilitation/Physical Therapy" },
      { id: 41, name: "Parking" },
      { id: 42, name: "Performing Arts" },
      { id: 43, name: "Personal Services (Health/Beauty, Dry Cleaning, etc.)" },
      { id: 44, name: "Preschool/Daycare" },
      { id: 45, name: "Refrigerated Warehouse" },
      { id: 46, name: "Repair Services (Vehicle, Shoe, Locksmith, etc.)" },
      { id: 47, name: "Residence Hall/Dormitory" },
      { id: 48, name: "Residential Care Facility" },
      { id: 49, name: "Restaurant" },
      { id: 50, name: "Retail Store" },
      { id: 51, name: "Self-Storage Facility" },
      { id: 52, name: "Senior Care Community" },
      { id: 53, name: "Social/Meeting Hall" },
      { id: 54, name: "Strip Mall" },
      { id: 55, name: "Supermarket/Grocery Store" },
      { id: 56, name: "Transportation Terminal/Station" },
      { id: 57, name: "Urgent Care/Clinic/Other Outpatient" },
      { id: 58, name: "Vocational School" },
      { id: 59, name: "Wholesale Club/Supercenter" },
      { id: 60, name: "Worship Facility" },
    ];

    //Seed property types
    for (const propertyType of propertyTypes) {
      let existingPropertyType = await prisma.propertyType.findUnique({
        where: { id: propertyType.id },
      });

      if (!existingPropertyType) {
        await prisma.propertyType.create({
          data: {
            id: propertyType.id,
            name: propertyType.name,
          },
        });
        console.log(`Property type "${propertyType.name}" created with ID ${propertyType.id}.`);
      } else {
        await prisma.propertyType.update({
          where: { id: propertyType.id },
          data: { name: propertyType.name },
        });
        console.log(`Property type "${propertyType.name}" updated with ID ${propertyType.id}.`);
      }
    }

    //Read and parse categorical questions
    const catJsonPath = path.join(
      __dirname,
      "..",
      "dummy-data",
      "categoricalQuestions.json"
    );
    const categoricalQuestions = JSON.parse(
      fs.readFileSync(catJsonPath, "utf8")
    );

    // Loop through each property type in the categorical questions
    for (const propertyTypeName in categoricalQuestions) {
      //Ensure the property type exists
      let propertyType = await prisma.propertyType.findFirst({
        where: { name: propertyTypeName },
      });

      if (!propertyType) {
        console.error(
          `Property type "${propertyTypeName}" does not exist in the database.`
        );
        continue;
      }

      const consumptionAreas = categoricalQuestions[propertyTypeName];

      for (const areaName in consumptionAreas) {
        let consumptionArea = await prisma.consumptionArea.findFirst({
          where: {
            name: areaName,
            propertyTypeId: propertyType.id,
          },
        });

        if (!consumptionArea) {
          consumptionArea = await prisma.consumptionArea.create({
            data: {
              name: areaName,
              propertyTypeId: propertyType.id,
            },
          });
          console.log(
            `Consumption area "${areaName}" created for property type "${propertyTypeName}".`
          );
        } else {
          console.log(
            `Consumption area "${areaName}" already exists for property type "${propertyTypeName}".`
          );
        }

        const questions = consumptionAreas[areaName];

        for (const questionData of questions) {
          await prisma.propertySpecificQuestion.create({
            data: {
              question: questionData.question,
              validChoices: JSON.stringify(questionData.options),
              consumptionAreaId: consumptionArea.id,
            },
          });
          console.log(
            `Question "${questionData.question}" created for consumption area "${areaName}".`
          );
        }
      }
    }

    console.log(
      "Property types and categorical questions seeded successfully."
    );
  } catch (error) {
    console.error(
      "Error seeding property types and categorical questions:",
      error
    );
  } finally {
    await prisma.$disconnect();
  }
}

seedPropertyTypesAndQuestions();
