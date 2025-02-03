DROP DATABASE IF EXISTS rebrand;

CREATE DATABASE rebrand;

\c rebrand;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS user_assessment_questions;
DROP TABLE IF EXISTS user_assessment_answers;
DROP TABLE IF EXISTS property_type;
DROP TABLE IF EXISTS energy_usage_areas;
DROP TABLE IF EXISTS energy_usage_areas_questions;
DROP TABLE IF EXISTS energy_usage_areas_answers;
DROP TABLE IF EXISTS electricity_usage_daily;
DROP TABLE IF EXISTS natural_gas_usage_daily;
DROP TABLE IF EXISTS electricity_usage_weekly;
DROP TABLE IF EXISTS natural_gas_usage_weekly;
DROP TABLE IF EXISTS electricity_usage_monthly;
DROP TABLE IF EXISTS natural_gas_usage_monthly;
DROP TABLE IF EXISTS electricity_usage_yearly;
DROP TABLE IF EXISTS natural_gas_usage_yearly;

DROP TABLE IF EXISTS compliance_report;

CREATE TABLE users (
    uuid TEXT DEFAULT gen_random_uuid()::TEXT PRIMARY KEY,
    organization_name VARCHAR NOT NULL,
    username VARCHAR NOT NULL,
    contact_email VARCHAR UNIQUE NOT NULL,
    property_type_id INTEGER NOT NULL REFERENCES property_type(id),
    building_size FLOAT NOT NULL,
    building_code VARCHAR NOT NULL,
    utility_provider VARCHAR NOT NULL,
    account_number VARCHAR UNIQUE NOT NULL
);


CREATE TABLE user_assessment_questions (
    id SERIAL PRIMARY KEY,
    question TEXT NOT NULL,
    description TEXT
);


CREATE TABLE property_type (
    id SERIAL PRIMARY KEY,
    property_type_name VARCHAR UNIQUE NOT NULL,
    property_type_code VARCHAR,
    emission_factor DECIMAL(10, 5)
);

CREATE TABLE energy_usage_areas (
    id SERIAL PRIMARY KEY,
    property_type_id INTEGER NOT NULL REFERENCES property_type(id),
    area_name VARCHAR(255) NOT NULL
);

CREATE TABLE energy_usage_areas_questions (
    id SERIAL PRIMARY KEY,
    area_id INTEGER NOT NULL REFERENCES energy_usage_areas(id),
    question_text TEXT NOT NULL,
    valid_choices JSON NOT NULL  
);

CREATE TABLE energy_usage_areas_answers (
    id SERIAL PRIMARY KEY,
    user_uuid TEXT REFERENCES users(uuid) ON DELETE CASCADE,
    question_id INTEGER REFERENCES energy_usage_areas_questions(id) ON DELETE CASCADE,
    answer TEXT NOT NULL
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


CREATE TABLE compliance_report (
    id SERIAL PRIMARY KEY,
    report_content VARCHAR NOT NULL,
    user_uuid TEXT REFERENCES users(uuid) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
