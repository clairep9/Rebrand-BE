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
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS categorical_questions;

CREATE TABLE users (
    uuid TEXT DEFAULT gen_random_uuid()::TEXT PRIMARY KEY,
    organization_name VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    contact_email VARCHAR UNIQUE NOT NULL,
    property_type_id INTEGER NOT NULL REFERENCES property_type(id),
    building_size FLOAT NOT NULL,
    building_code VARCHAR NOT NULL,
    utility_provider VARCHAR NOT NULL,
    account_number VARCHAR UNIQUE NOT NULL
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

CREATE TABLE property_type (
    id SERIAL PRIMARY KEY,
    property_type_name VARCHAR UNIQUE NOT NULL,
    property_type_code VARCHAR,
    emission_factor DECIMAL(10, 5)
);

CREATE TABLE consumption_area (
    id SERIAL PRIMARY KEY,
    consumption_area_name VARCHAR NOT NULL,
    consumption_area_code VARCHAR,
    property_type_id INT NOT NULL REFERENCES property_type(id)
);

CREATE TABLE property_specific_question (
    id SERIAL PRIMARY KEY,
    question VARCHAR NOT NULL,
    valid_choices VARCHAR NOT NULL,
    consumption_area_id INT NOT NULL REFERENCES consumption_area(id)
);

CREATE TABLE property_specific_answer (
    id SERIAL PRIMARY KEY,
    answer VARCHAR NOT NULL,
    question_id INT NOT NULL REFERENCES property_specific_question(id) ON DELETE CASCADE,
    user_uuid TEXT NOT NULL REFERENCES users(uuid) ON DELETE CASCADE
);

CREATE TABLE compliance_report (
    id SERIAL PRIMARY KEY,
    report_content VARCHAR NOT NULL,
    user_uuid TEXT REFERENCES users(uuid) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Daily Aggregated Data
CREATE TABLE electricity_usage_daily (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    date DATE NOT NULL,
    usage_kwh DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE natural_gas_usage_daily (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    date DATE NOT NULL,
    usage_kbtu DECIMAL(10, 2) NOT NULL, 
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Weekly Aggregated Data
CREATE TABLE electricity_usage_weekly (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    usage_kwh DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE natural_gas_usage_weekly (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    usage_kbtu DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Monthly Aggregated Data
CREATE TABLE electricity_usage_monthly (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    month DATE NOT NULL,
    usage_kwh DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE natural_gas_usage_monthly (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    month DATE NOT NULL,
    usage_kbtu DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Yearly Aggregated Data
CREATE TABLE electricity_usage_yearly (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    year INTEGER NOT NULL,
    usage_kwh DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE natural_gas_usage_yearly (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT NOT NULL REFERENCES users(uuid),
    property_id INTEGER NOT NULL REFERENCES property_type(id),
    year INTEGER NOT NULL,
    usage_kbtu DECIMAL(10, 2) NOT NULL,
    cost DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    property_type_id INTEGER NOT NULL REFERENCES property_type(id),
    name VARCHAR(255) NOT NULL
);

CREATE TABLE categorical_questions (
    id SERIAL PRIMARY KEY,
    category_id INTEGER NOT NULL REFERENCES categories(id),
    question_text TEXT NOT NULL,
    valid_choices JSON NOT NULL  
);

