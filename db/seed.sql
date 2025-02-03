\c rebrand;

-- property_type table
INSERT INTO property_type (property_type_name, property_type_code, emission_factor) VALUES 
    ('Adult Education', 'B', 0.00758),
    ('Ambulatory Surgical Center', 'B*', 0.01181),
    ('Automobile Dealership', 'B', 0.00675),
    ('Bank Branch', 'B', 0.00987),
    ('Bowling Alley', 'A-3', 0.00574),
    ('College/University', 'B', 0.00987),
    ('Convenience Store without Gas Station', 'M', 0.00675),
    ('Courthouse', 'A-3', 0.00426),
    ('Data Center', 'B', 0.02381),
    ('Distribution Center', 'S', 0.00574),
    ('Enclosed Mall', 'M', 0.01074),
    ('Financial Office', 'B', 0.00846),
    ('Fitness Center/Health Club/Gym', 'A-3', 0.00987),
    ('Food Sales', 'M', 0.01181),
    ('Food Service', 'M', 0.01181),
    ('Hospital (General Medical & Surgical)', 'I-2', 0.02381),
    ('Hotel', 'R-1',  0.00987),
    ('K-12 School', 'E',  0.00675),
    ('Laboratory', 'B*', 0.02381),
    ('Library', 'B', 0.00675),
    ('Lifestyle Center', 'M', 0.00846),
    ('Mailing Center/Post Office', 'B', 0.00426),
    ('Manufacturing/Industrial Plant', 'F', 0.00758),
    ('Medical Office', 'B', 0.01074),
    ('Movie Theater', 'A-1', 0.01181),
    ('Multifamily Housing', 'R-2', 0.00675),
    ('Museum', 'A-3', 0.01181),
    ('Non-Refrigerated Warehouse', 'S-1', 0.00426),
    ('Office', 'B', 0.00758),
    ('Other - Education', 'B', 0.00846),
    ('Other - Entertainment/Public Assembly', 'A-3', 0.00987),
    ('Other - Lodging/Residential', 'R-1', 0.00758),
    ('Other - Mall', 'M', 0.01074),
    ('Other - Public Services', 'B', 0.00758),
    ('Other - Recreation', 'A-3', 0.00987),
    ('Other - Restaurant/Bar', 'A-2', 0.02381),
    ('Other - Services', 'B', 0.01074),
    ('Other - Specialty Hospital', 'I-2', 0.02381),
    ('Other - Technology/Science', 'B*', 0.02381),
    ('Outpatient Rehabilitation/Physical Therapy', 'B', 0.01181),
    ('Parking', 'S-2', 0.00426),
    ('Performing Arts', 'A-1', 0.00846),
    ('Personal Services (Health/Beauty, Dry Cleaning, etc.)', 'B', 0.00574),
    ('Pre-school/Daycare', 'I-4', 0.00675),
    ('Refrigerated Warehouse', 'S-2', 0.00987),
    ('Repair Services (Vehicle, Shoe, Locksmith, etc.)', 'F-1', 0.00426),
    ('Residence Hall/Dormitory', 'R-1', 0.00758),
    ('Residential Care Facility', 'I-1', 0.01138),
    ('Restaurant', 'A-2', 0.01181),
    ('Retail Store', 'M', 0.00758),
    ('Self-Storage Facility', 'S-1', 0.00426),
    ('Senior Care Community', 'I-2', 0.02381),
    ('Social/Meeting Hall', 'A-3', 0.00846),
    ('Strip Mall', 'M', 0.01181),
    ('Supermarket/Grocery Store', 'M', 0.01074),
    ('Transportation Terminal/Station', 'A-3', 0.01074),
    ('Urgent Care/Clinic/Other Outpatient', 'B', 0.00758),
    ('Vocational School', 'E', 0.00758),
    ('Wholesale Club/Supercenter', 'M', 0.01074),
    ('Worship Facility', 'A-3', 0.01074);


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
 

-- user table
INSERT INTO "users" (
    "organization_name", 
    "username",
    "contact_email", 
    "property_type_id", 
    "building_size", 
    "building_code",  
    "utility_provider", 
    "account_number"
) VALUES (
    'Little Brother Enterprise', 
    'littlebrotherenterprise',
    'matthew.adams@lbenterprise.com', 
    29,  
    26000, 
    'B', 
    'Con Edison', 
    '9876543210987'
);

INSERT INTO "users" (
    "organization_name", 
    "username", 
    "contact_email", 
    "property_type_id", 
    "building_size", 
    "building_code",   
    "utility_provider", 
    "account_number"
) VALUES (
    'Omaha Retail', 
    'omaharetail', 
    'lilly.baker@omaharetail.com', 
    50,  
    33000, 
    'M', 
    'Con Edison', 
    '1234567891234'
);


INSERT INTO "users" (
    "organization_name", 
    "username", 
    "contact_email", 
    "property_type_id", 
    "building_size", 
    "building_code",  
    "utility_provider", 
    "account_number"
) VALUES (
    'Capital Finance', 
    'capitalfinance', 
    'john.roberts@capitalfinance.com', 
    4,  
    52000, 
    'B',  
    'National Grid', 
    '6543210987654'
);


INSERT INTO user_assessment_questions (question, description) VALUES 
('What''s your organization''s name?', 'So we know what to call you.'),
('What is the size of your building in square feet?', 'This information allows us to assess your building''s eligibility for compliance.'),
('What is your property type?', 'Choosing the correct property type helps us determine your compliance requirements.'),
('Select your utility provider', 'Which utility partner provides your electricity?'),
('What is your account number?', 'This helps us gather your energy data.');