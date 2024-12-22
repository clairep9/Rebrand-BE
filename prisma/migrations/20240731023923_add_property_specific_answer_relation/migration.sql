-- CreateTable
CREATE TABLE "PropertyType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "PropertyType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PropertySpecificQuestion" (
    "id" SERIAL NOT NULL,
    "question" TEXT NOT NULL,
    "validChoices" TEXT NOT NULL,
    "propertyTypeId" INTEGER NOT NULL,

    CONSTRAINT "PropertySpecificQuestion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PropertySpecificAnswer" (
    "id" SERIAL NOT NULL,
    "answer" TEXT NOT NULL,
    "questionId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "PropertySpecificAnswer_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PropertyType_name_key" ON "PropertyType"("name");

-- AddForeignKey
ALTER TABLE "PropertySpecificQuestion" ADD CONSTRAINT "PropertySpecificQuestion_propertyTypeId_fkey" FOREIGN KEY ("propertyTypeId") REFERENCES "PropertyType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PropertySpecificAnswer" ADD CONSTRAINT "PropertySpecificAnswer_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "PropertySpecificQuestion"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PropertySpecificAnswer" ADD CONSTRAINT "PropertySpecificAnswer_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
