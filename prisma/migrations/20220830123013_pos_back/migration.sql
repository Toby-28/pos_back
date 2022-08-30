-- CreateTable
CREATE TABLE "barcodes" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,
    "itemUnitId" INTEGER NOT NULL,
    "unitId" INTEGER NOT NULL,
    "lineNr" INTEGER NOT NULL,
    "barcode" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "barcodes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "brands" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "brands_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cases" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT,
    "address2" TEXT,
    "divisionNr" INTEGER,
    "currencyId" INTEGER NOT NULL,
    "active" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "cases_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clients" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "name2" TEXT,
    "active" BOOLEAN,
    "cardType" INTEGER,
    "eCode" TEXT,
    "address" TEXT,
    "address2" TEXT,
    "district" TEXT,
    "town" TEXT,
    "city" TEXT,
    "cityCode" TEXT,
    "country" TEXT,
    "countryCode" TEXT,
    "phoneNumber" TEXT,
    "phoneNumber2" TEXT,
    "email" TEXT,
    "email2" TEXT,
    "email3" TEXT,
    "incharge" TEXT,
    "incharge2" TEXT,
    "incharge3" TEXT,
    "webAddress" TEXT,
    "birthDate" TEXT,
    "exchangeRateType" INTEGER,
    "Exchange" DOUBLE PRECISION,
    "discount" INTEGER,
    "specode" TEXT,
    "specode2" TEXT,
    "specode3" TEXT,
    "specode4" TEXT,
    "specode5" TEXT,
    "cyphcode" TEXT,
    "cardNo" TEXT,
    "guid" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "clients_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "currencies" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT,
    "activelyUsed" BOOLEAN,
    "lastRate1" DOUBLE PRECISION,
    "lastRate2" DOUBLE PRECISION,
    "lastRate3" DOUBLE PRECISION,
    "lastRate4" DOUBLE PRECISION,
    "lastRateDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "currencies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "discount_cards" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "cyphcode" TEXT,
    "specode" TEXT,
    "type" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "discount_cards_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "divisions" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "nr" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "street" TEXT,
    "doorNr" TEXT,
    "district" TEXT,
    "city" TEXT,
    "country" TEXT,
    "zipCode" TEXT,
    "phone" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "divisions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "units" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "unitSetId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "units_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "unit_sets" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "specode" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "unit_sets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "items" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "status" TEXT,
    "code" TEXT NOT NULL,
    "eCode" TEXT,
    "active" BOOLEAN,
    "eActive" BOOLEAN,
    "cardType" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "name2" TEXT,
    "name3" TEXT,
    "name4" TEXT,
    "specode1" TEXT,
    "specode2" TEXT,
    "specode3" TEXT,
    "specode4" TEXT,
    "specode5" TEXT,
    "keyword1" TEXT,
    "keyword2" TEXT,
    "keyword3" TEXT,
    "keyword4" TEXT,
    "keyword5" TEXT,
    "origin" TEXT,
    "category" TEXT,
    "mainUnit" TEXT,
    "mainUnitId" INTEGER,
    "brandId" INTEGER,
    "variationCode" TEXT,
    "reyonCode" TEXT,
    "producerCode" TEXT,
    "salesLimitQuantity" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "item_units" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "unitId" INTEGER,
    "itemId" INTEGER,
    "mainUnit" BOOLEAN,
    "lineNr" INTEGER,
    "coefficient" INTEGER,
    "eActive" BOOLEAN,
    "width" INTEGER,
    "widthUnit" TEXT,
    "length" INTEGER,
    "lengthUnit" TEXT,
    "height" INTEGER,
    "heightUnit" TEXT,
    "area" INTEGER,
    "areaUnit" TEXT,
    "volume" INTEGER,
    "volumeUnit" TEXT,
    "weight" INTEGER,
    "weightUnit" TEXT,
    "grossvolume" INTEGER,
    "grossvolumeUnit" TEXT,
    "grossweight" INTEGER,
    "grossweightUnit" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "item_units_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "prices" (
    "id" SERIAL NOT NULL,
    "id_" INTEGER NOT NULL,
    "code" TEXT NOT NULL,
    "itemId" INTEGER NOT NULL,
    "priority" INTEGER,
    "clentcode" TEXT,
    "clcyphcode" TEXT,
    "clspecode" TEXT,
    "clspecode2" TEXT,
    "clspecode3" TEXT,
    "clspecode4" TEXT,
    "clspecode5" TEXT,
    "active" BOOLEAN,
    "divisions" INTEGER[],
    "price" DOUBLE PRECISION NOT NULL,
    "type" INTEGER,
    "unitId" INTEGER,
    "currencyId" INTEGER NOT NULL,
    "beginTime" TEXT,
    "endTime" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "prices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "items_barcodes" (
    "id" SERIAL NOT NULL,
    "barcodesId" INTEGER,
    "itemsId" INTEGER,

    CONSTRAINT "items_barcodes_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "barcodes_id__key" ON "barcodes"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "barcodes_itemUnitId_key" ON "barcodes"("itemUnitId");

-- CreateIndex
CREATE UNIQUE INDEX "barcodes_barcode_key" ON "barcodes"("barcode");

-- CreateIndex
CREATE UNIQUE INDEX "brands_id__key" ON "brands"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "cases_id__key" ON "cases"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "clients_id__key" ON "clients"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "currencies_id__key" ON "currencies"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "discount_cards_id__key" ON "discount_cards"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "divisions_id__key" ON "divisions"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "divisions_nr_key" ON "divisions"("nr");

-- CreateIndex
CREATE UNIQUE INDEX "units_id__key" ON "units"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "unit_sets_id__key" ON "unit_sets"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "items_id__key" ON "items"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "item_units_id__key" ON "item_units"("id_");

-- CreateIndex
CREATE UNIQUE INDEX "prices_id__key" ON "prices"("id_");

-- AddForeignKey
ALTER TABLE "barcodes" ADD CONSTRAINT "barcodes_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "items"("id_") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "barcodes" ADD CONSTRAINT "barcodes_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES "units"("id_") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cases" ADD CONSTRAINT "cases_currencyId_fkey" FOREIGN KEY ("currencyId") REFERENCES "currencies"("id_") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "units" ADD CONSTRAINT "units_unitSetId_fkey" FOREIGN KEY ("unitSetId") REFERENCES "unit_sets"("id_") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "items" ADD CONSTRAINT "items_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES "brands"("id_") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "items" ADD CONSTRAINT "items_mainUnitId_fkey" FOREIGN KEY ("mainUnitId") REFERENCES "units"("id_") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_units" ADD CONSTRAINT "item_units_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES "units"("id_") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_units" ADD CONSTRAINT "item_units_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "items"("id_") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prices" ADD CONSTRAINT "prices_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "items"("id_") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prices" ADD CONSTRAINT "prices_currencyId_fkey" FOREIGN KEY ("currencyId") REFERENCES "currencies"("id_") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prices" ADD CONSTRAINT "prices_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES "units"("id_") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "items_barcodes" ADD CONSTRAINT "items_barcodes_barcodesId_fkey" FOREIGN KEY ("barcodesId") REFERENCES "barcodes"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "items_barcodes" ADD CONSTRAINT "items_barcodes_itemsId_fkey" FOREIGN KEY ("itemsId") REFERENCES "items"("id") ON DELETE SET NULL ON UPDATE CASCADE;
