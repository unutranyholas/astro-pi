-- CreateTable
CREATE TABLE "awair" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(3) NOT NULL,
    "score" INTEGER NOT NULL,
    "temp" DOUBLE PRECISION NOT NULL,
    "humid" DOUBLE PRECISION NOT NULL,
    "co2" INTEGER NOT NULL,
    "voc" INTEGER NOT NULL,
    "pm25" INTEGER NOT NULL,

    CONSTRAINT "awair_pkey" PRIMARY KEY ("id")
);
