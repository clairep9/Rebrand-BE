DROP DATABASE IF EXISTS rebrand;

CREATE DATABASE rebrand;

\c rebrand;

DROP TABLE IF EXISTS compliance_report;
DROP TABLE IF EXISTS property_specific_answer;
DROP TABLE IF EXISTS property_specific_question;
DROP TABLE IF EXISTS consumption_area;
DROP TABLE IF EXISTS property_type;
DROP TABLE IF EXISTS dummy_usage;
DROP TABLE IF EXISTS answer;
DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS usage;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    uuid TEXT DEFAULT gen_random_uuid()::TEXT PRIMARY KEY,
    organization_name VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    contact_email VARCHAR UNIQUE NOT NULL,
    property_type_id INT NOT NULL,
    building_size FLOAT NOT NULL,
    building_code VARCHAR NOT NULL,
    emission_factor FLOAT,
    emission_limit FLOAT,
    utility_provider VARCHAR NOT NULL,
    account_number VARCHAR UNIQUE NOT NULL
);

CREATE TABLE usage (
    id SERIAL PRIMARY KEY,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    amount FLOAT NOT NULL,
    rate_code VARCHAR NOT NULL,
    demand FLOAT NOT NULL,
    meter_type VARCHAR NOT NULL,
    user_uuid TEXT REFERENCES users(uuid)
);


CREATE TABLE assessment_questions (
    id SERIAL PRIMARY KEY,
    question TEXT NOT NULL,
    valid_choices JSON NOT NULL 
);

CREATE TABLE user_assessment_answers (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT REFERENCES users(uuid) ON DELETE CASCADE, 
    question_id INT REFERENCES assessment_questions(id) ON DELETE CASCADE, 
    selected_option TEXT NOT NULL,  
);

CREATE TABLE dummy_usage (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP NOT NULL,
    usage_amount_kwh FLOAT NOT NULL,
    user_uuid TEXT REFERENCES users(uuid)
);

CREATE TABLE property_type (
    id TEXT DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE consumption_area (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    property_type_id TEXT REFERENCES property_type(id)
);

CREATE TABLE property_specific_question (
    id SERIAL PRIMARY KEY,
    question VARCHAR NOT NULL,
    valid_choices VARCHAR NOT NULL,
    consumption_area_id INT REFERENCES consumption_area(id)
);

CREATE TABLE property_specific_answer (
    id SERIAL PRIMARY KEY,
    answer VARCHAR NOT NULL,
    question_id INT REFERENCES property_specific_question(id),
    user_uuid TEXT REFERENCES users(uuid)
);

CREATE TABLE compliance_report (
    id SERIAL PRIMARY KEY,
    report_content VARCHAR NOT NULL,
    user_uuid TEXT REFERENCES users(uuid),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
