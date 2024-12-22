-- CreateTable
CREATE TABLE "DummyUsage" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(3) NOT NULL,
    "amount" DOUBLE PRECISION NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "DummyUsage_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "DummyUsage" ADD CONSTRAINT "DummyUsage_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
