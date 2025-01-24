CREATE TABLE "user" (
    "uuid" TEXT DEFAULT gen_random_uuid()::TEXT PRIMARY KEY,
    "organization_name" VARCHAR NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "contact_email" VARCHAR UNIQUE NOT NULL,
    "property_type_id" INT NOT NULL,
    "building_size" FLOAT NOT NULL,
    "building_code" VARCHAR NOT NULL,
    "emission_factor" FLOAT,
    "emission_limit" FLOAT,
    "utility_provider" VARCHAR NOT NULL,
    "account_number" VARCHAR UNIQUE NOT NULL
);

CREATE TABLE "usage" (
    "id" SERIAL PRIMARY KEY,
    "start_date" TIMESTAMP NOT NULL,
    "end_date" TIMESTAMP NOT NULL,
    "amount" FLOAT NOT NULL,
    "rate_code" VARCHAR NOT NULL,
    "demand" FLOAT NOT NULL,
    "meter_type" VARCHAR NOT NULL,
    "user_uuid" TEXT NOT NULL,
    FOREIGN KEY ("user_uuid") REFERENCES "user"("uuid")
);

CREATE TABLE "question" (
    "id" SERIAL PRIMARY KEY,
    "question" VARCHAR NOT NULL,
    "valid_choices" VARCHAR NOT NULL
);

CREATE TABLE "answer" (
    "id" SERIAL PRIMARY KEY,
    "answer" VARCHAR NOT NULL,
    "question_id" INT NOT NULL,
    "user_uuid" TEXT NOT NULL,
    FOREIGN KEY ("question_id") REFERENCES "question"("id"),
    FOREIGN KEY ("user_uuid") REFERENCES "user"("uuid")
);

CREATE TABLE "dummy_usage" (
    "id" SERIAL PRIMARY KEY,
    "timestamp" TIMESTAMP NOT NULL,
    "usage_amount_kwh" FLOAT NOT NULL,
    "user_uuid" TEXT NOT NULL,
    FOREIGN KEY ("user_uuid") REFERENCES "user"("uuid")
);

CREATE TABLE "property_type" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR UNIQUE NOT NULL
);

CREATE TABLE "consumption_area" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR NOT NULL,
    "property_type_id" INT NOT NULL,
    FOREIGN KEY ("property_type_id") REFERENCES "property_type"("id")
);

CREATE TABLE "property_specific_question" (
    "id" SERIAL PRIMARY KEY,
    "question" VARCHAR NOT NULL,
    "valid_choices" VARCHAR NOT NULL,
    "consumption_area_id" INT NOT NULL,
    FOREIGN KEY ("consumption_area_id") REFERENCES "consumption_area"("id")
);

CREATE TABLE "property_specific_answer" (
    "id" SERIAL PRIMARY KEY,
    "answer" VARCHAR NOT NULL,
    "question_id" INT NOT NULL,
    "user_uuid" TEXT NOT NULL,
    FOREIGN KEY ("question_id") REFERENCES "property_specific_question"("id"),
    FOREIGN KEY ("user_uuid") REFERENCES "user"("uuid")
);

CREATE TABLE "compliance_report" (
    "id" SERIAL PRIMARY KEY,
    "report_content" VARCHAR NOT NULL,
    "user_uuid" TEXT NOT NULL,
    "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY ("user_uuid") REFERENCES "user"("uuid")
);
