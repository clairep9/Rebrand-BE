/*
  Warnings:

  - You are about to drop the column `propertyTypeId` on the `PropertySpecificQuestion` table. All the data in the column will be lost.
  - You are about to drop the column `propertyType` on the `User` table. All the data in the column will be lost.
  - Added the required column `consumptionAreaId` to the `PropertySpecificQuestion` table without a default value. This is not possible if the table is not empty.
  - Added the required column `propertyTypeId` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "PropertySpecificQuestion" DROP CONSTRAINT "PropertySpecificQuestion_propertyTypeId_fkey";

-- AlterTable
ALTER TABLE "PropertySpecificQuestion" DROP COLUMN "propertyTypeId",
ADD COLUMN     "consumptionAreaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "propertyType",
ADD COLUMN     "propertyTypeId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "ConsumptionArea" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "propertyTypeId" INTEGER NOT NULL,

    CONSTRAINT "ConsumptionArea_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_propertyTypeId_fkey" FOREIGN KEY ("propertyTypeId") REFERENCES "PropertyType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ConsumptionArea" ADD CONSTRAINT "ConsumptionArea_propertyTypeId_fkey" FOREIGN KEY ("propertyTypeId") REFERENCES "PropertyType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PropertySpecificQuestion" ADD CONSTRAINT "PropertySpecificQuestion_consumptionAreaId_fkey" FOREIGN KEY ("consumptionAreaId") REFERENCES "ConsumptionArea"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
