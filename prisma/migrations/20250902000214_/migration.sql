-- CreateTable
CREATE TABLE "public"."users" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "password" VARCHAR(32) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."device" (
    "id" SERIAL NOT NULL,
    "password" VARCHAR(64) NOT NULL,

    CONSTRAINT "device_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."my_device" (
    "user_id" INTEGER NOT NULL,
    "device_id" INTEGER NOT NULL,
    "name" VARCHAR(200),

    CONSTRAINT "my_device_pkey" PRIMARY KEY ("user_id","device_id")
);

-- AddForeignKey
ALTER TABLE "public"."my_device" ADD CONSTRAINT "my_device_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."my_device" ADD CONSTRAINT "my_device_device_id_fkey" FOREIGN KEY ("device_id") REFERENCES "public"."device"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
