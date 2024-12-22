/*
  Warnings:

  - You are about to drop the column `amount` on the `DummyUsage` table. All the data in the column will be lost.
  - You are about to drop the column `time` on the `DummyUsage` table. All the data in the column will be lost.
  - Added the required column `timestamp` to the `DummyUsage` table without a default value. This is not possible if the table is not empty.
  - Added the required column `usageAmountKwh` to the `DummyUsage` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "DummyUsage" DROP COLUMN "amount",
DROP COLUMN "time",
ADD COLUMN     "timestamp" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "usageAmountKwh" DOUBLE PRECISION NOT NULL;
