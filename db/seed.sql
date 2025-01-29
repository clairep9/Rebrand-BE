\c rebrand;

-- user table
INSERT INTO "users" (
    "organization_name", 
    "first_name", 
    "last_name", 
    "contact_email", 
    "property_type_id", 
    "building_size", 
    "building_code", 
    "emission_factor", 
    "emission_limit", 
    "utility_provider", 
    "account_number"
) VALUES (
    'Little Brother Enterprise', 
    'Matthew', 
    'Adams', 
    'matthew.adams@lbenterprise.com', 
    1,  
    27000, 
    'B', 
    0.00987, 
    0.00846, 
    'Con Edison', 
    '1234567891234'
);

-- usage table
INSERT INTO "usage" (
    "start_date", 
    "end_date", 
    "amount", 
    "rate_code", 
    "demand", 
    "meter_type", 
    "user_uuid"
) VALUES (
    NOW() - INTERVAL '1 month', 
    NOW(), 
    300.0, 
    'R001', 
    50.0, 
    'Electric', 
    :user_uuid
);

-- dummy_usage table
INSERT INTO "dummy_usage" (
    "timestamp", 
    "usage_amount_kwh", 
    "user_uuid"
) VALUES (
    NOW() - INTERVAL '1 week', 
    200.0, 
    :user_uuid
);

-- assessment_questions table
INSERT INTO "assessment_questions" (
    "question", 
    "valid_choices"
) VALUES 
('How many employees are onsite on a weekly basis?', 
 '["Less than 50", "50-100", "101-200", "201-500", "More than 500"]'),
('What is your primary source of heating in the winter?', 
 '["Natural gas", "Oil", "Electric", "Propane", "District heating", "Other"]'),
('What is your primary source of cooling in the summer?', 
 '["Central air conditioning", "Window air conditioning units", "Evaporative cooler (swamp cooler)", "Heat pump", "None"]'),
('What type of cooling system do you use?', 
 '["Central air conditioner", "Central heat pump", "Room air conditioner", "Room heat pump", "Other"]'),
('During the hotter months, what is the typical temperature set for employee comfort?', 
 '["Below 68°F", "68°F - 70°F", "71°F - 73°F", "74°F - 76°F", "Above 76°F"]'),
('How often is the air conditioning turned off during the day, and is it automatically controlled?', 
 '["It is always on", "It is rarely turned off and is auto-controlled", "It is turned off occasionally and is manually controlled", "It is turned off frequently and is manually controlled"]'),
('What type of water heating system is installed in your building?', 
 '["Large conventional storage tank", "Tankless or on-demand system", "Central boiler system", "Heat Pump Water Heater", "Solar water heating system", "Other", "Not applicable (e.g., not billed for water heating)"]'),
('What portion of your building’s indoor lighting uses LED bulbs?', 
 '["None", "Less than 25%", "25%-50%", "51%-75%", "More than 75%"]'),
('Which of the following are plugged in and turned on in your building? (Select all that apply)', 
 '["Refrigerators (break rooms, etc.)", "Computers", "Printers", "Kitchen appliances", "Miscellaneous electronics (e.g., TVs, chargers)", "Other"]'),
('What type of fuel does your oven or kitchen equipment use?', 
 '["Natural gas", "Electric", "Propane", "Other"]'),
('Which Wi-Fi enabled “smart” appliances or devices are used in your building? (Select all that apply)', 
 '["Smart thermostat", "Smart lighting", "Smart plugs", "Smart refrigerator", "Smart washing machine", "Smart dryer", "Smart speaker or voice assistant", "Smart window air conditioner", "Smart outlets for lighting control", "Other"]'),
('What type of insulation is used in your building? (Select all that apply)', 
 '["Fiberglass", "Foam board", "Spray foam", "Cellulose", "None", "Other"]'),
('How frequently is your HVAC system serviced?', 
 '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
('What is the primary use of your building’s hot water?', 
 '["Domestic use (e.g., sinks, showers)", "Industrial processes", "Heating", "Kitchen use", "Other"]'),
('How are building occupancy levels managed?', 
 '["Occupancy sensors", "Manual adjustments", "Scheduled changes", "Not actively managed", "Other"]'),
('Do you have any plans to upgrade or retrofit your building to improve energy efficiency?', 
 '["Yes, in the next 6 months", "Yes, in the next year", "Yes, within 2 years", "No", "Not sure"]'),
('Are there any major energy-consuming processes or equipment in your building? (Select all that apply)', 
 '["Data centers", "Large refrigeration units", "Industrial machinery", "Commercial kitchen equipment", "Other"]'),
("How is your building's energy consumption monitored?", 
 '["Smart meters", "Building Management System (BMS)", "Manual readings", "Utility bills", "Not monitored"]'),
('Do you have any energy-efficient certifications or standards for your building?', 
 '["LEED", "ENERGY STAR", "BREEAM", "None", "Other"]'),
('What types of renewable energy systems, if any, are installed in your building? (Select all that apply)', 
 '["Solar panels", "Wind turbines", "Geothermal heating/cooling", "None", "Other"]'),
('Do you have any energy-saving measures in place for your building? (Select all that apply)', 
 '["Automated lighting controls", "Low-flow water fixtures", "Energy-efficient windows", "Roof insulation", "Building envelope upgrades", "None", "Other"]'),
('Do you participate in any demand response programs or energy conservation programs?', 
 '["Yes, demand response", "Yes, energy conservation", "No", "Not sure"]');
 

-- property_type table
INSERT INTO "property_type" ("name") VALUES 
    ('Adult Education'),
    ('Ambulatory Surgical Center'),
    ('Automobile Dealership'),
    ('Bank Branch'),
    ('Bowling Alley'),
    ('College/University'),
    ('Convenience Store without Gas Station'),
    ('Courthouse'),
    ('Data Center'),
    ('Distribution Center'),
    ('Enclosed Mall'),
    ('Financial Office'),
    ('Fitness Center/Health Club/Gym'),
    ('Food Sales'),
    ('Food Service'),
    ('Hospital (General Medical & Surgical)'),
    ('Hotel'),
    ('K-12 School'),
    ('Laboratory'),
    ('Library'),
    ('Lifestyle Center'),
    ('Mailing Center/Post Office'),
    ('Manufacturing/Industrial Plant'),
    ('Medical Office'),
    ('Movie Theater'),
    ('Multifamily Housing'),
    ('Museum'),
    ('Non-Refrigerated Warehouse'),
    ('Office'),
    ('Other - Education'),
    ('Other - Entertainment/Public Assembly'),
    ('Other - Lodging/Residential'),
    ('Other - Mall'),
    ('Other - Public Services'),
    ('Other - Recreation'),
    ('Other - Restaurant/Bar'),
    ('Other - Services'),
    ('Other - Specialty Hospital'),
    ('Other - Technology/Science'),
    ('Outpatient Rehabilitation/Physical Therapy'),
    ('Parking'),
    ('Performing Arts'),
    ('Personal Services (Health/Beauty, Dry Cleaning, etc.)'),
    ('Pre-school/Daycare'),
    ('Refrigerated Warehouse'),
    ('Repair Services (Vehicle, Shoe, Locksmith, etc.)'),
    ('Residence Hall/Dormitory'),
    ('Residential Care Facility'),
    ('Restaurant'),
    ('Retail Store'),
    ('Self-Storage Facility'),
    ('Senior Care Community'),
    ('Social/Meeting Hall'),
    ('Strip Mall'),
    ('Supermarket/Grocery Store'),
    ('Transportation Terminal/Station'),
    ('Urgent Care/Clinic/Other Outpatient'),
    ('Vocational School'),
    ('Wholesale Club/Supercenter'),
    ('Worship Facility');

-- consumption_area table
INSERT INTO "consumption_area" (
    "name", 
    "property_type_id"
) VALUES (
    'Office Space', 
    :property_type_id
);

-- property_specific_question table
INSERT INTO "property_specific_question" (
    "question", 
    "valid_choices", 
    "consumption_area_id"
) VALUES (
    'What type of lighting do you use?', 
    '["LED", "Fluorescent", "Incandescent"]', 
    :consumption_area_id
);

-- property_specific_answer table
INSERT INTO "property_specific_answer" (
    "answer", 
    "question_id", 
    "user_uuid"
) VALUES (
    'LED', 
    :property_specific_question_id, 
    :user_uuid
);

-- compliance_report table
INSERT INTO "compliance_report" (
    "report_content", 
    "user_uuid"
) VALUES (
    'Annual compliance report for Little Brother Enterprise.', 
    :user_uuid
);
