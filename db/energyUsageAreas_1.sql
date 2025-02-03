\c rebrand

-- Insert energy_usage_areas for "Adult Education"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(1, 'Classrooms'),
(1, 'Offices'),
(1, 'Computer Labs'),
(1, 'Libraries'),
(1, 'Cafeterias'),
(1, 'Common Areas'),
(1, 'Gymnasiums'),
(1, 'HVAC Systems');

-- Insert Questions for Classrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in classrooms during peak hours?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What percentage of classroom equipment (e.g., projectors, computers) is energy-efficient or ENERGY STAR rated?', '["None", "Less than 25%", "25%-50%", "51%-75%", "More than 75%"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Computer Labs
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How often are computers and related equipment in the computer lab turned off or put into power-saving mode when not in use?', '["Always", "Frequently", "Occasionally", "Rarely", "Never"]'),
(3, 'What measures are taken to reduce energy consumption in computer labs?', '["Use of energy-efficient computers and monitors", "Implementation of automatic shutdown policies", "Use of virtual desktops", "None", "Other (please specify)"]');

-- Insert Questions for Libraries
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How is energy usage monitored and managed in the library?', '["Through a building management system", "Regular manual readings", "Utility bills", "Not monitored"]'),
(4, 'What type of lighting technology is predominantly used in the library?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');

-- Insert Questions for Cafeterias
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(5, 'How often is the cafeteria kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Common Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How are common area lighting systems managed?', '["Manual switches", "Motion sensors", "Automatic timers", "Smart lighting systems"]'),
(6, 'What type of energy-efficient practices are implemented in common areas?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');

-- Insert Questions for Gymnasiums
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of HVAC system is used in the gymnasium?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(7, 'How often is gymnasium equipment serviced to ensure energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of energy recovery systems are in place for the HVAC system?', '["Heat recovery ventilators (HRV)", "Energy recovery ventilators (ERV)", "None", "Not sure", "Other (please specify)"]'),
(8, 'How frequently is the HVAC system upgraded or retrofitted to improve energy efficiency?', '["Every year", "Every 2-3 years", "Every 4-5 years", "More than 5 years", "Never"]');


-- Insert energy_usage_areas for "Ambulatory Surgical Center"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(2, 'Operating Rooms'),
(2, 'Patient Rooms'),
(2, 'Medical Imaging Equipment'),
(2, 'Sterilization Units'),
(2, 'HVAC Systems'),
(2, 'Offices'),
(2, 'Waiting Areas'),
(2, 'Laboratories');

-- Insert Questions for Operating Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the operating rooms?', '["Halogen", "LED", "Fluorescent", "Other (please specify)"]'),
(1, 'How often are HVAC systems in operating rooms serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Patient Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How is temperature controlled in patient rooms?', '["Centrally controlled", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(2, 'What type of lighting is used in patient rooms?', '["Incandescent", "Fluorescent", "LED", "Other (please specify)"]');

-- Insert Questions for Medical Imaging Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How frequently is medical imaging equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(3, 'What measures are taken to reduce energy consumption of medical imaging equipment?', '["Use of energy-efficient equipment", "Regular maintenance", "Automatic shutdown when not in use", "None", "Other (please specify)"]');

-- Insert Questions for Sterilization Units
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How often are sterilization units serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(4, 'What type of energy-efficient practices are implemented for sterilization units?', '["Use of energy-efficient units", "Scheduled operation times", "Regular maintenance", "None", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of energy recovery systems are in place for the HVAC system?', '["Heat recovery ventilators (HRV)", "Energy recovery ventilators (ERV)", "None", "Not sure", "Other (please specify)"]'),
(5, 'How frequently is the HVAC system upgraded or retrofitted to improve energy efficiency?', '["Every year", "Every 2-3 years", "Every 4-5 years", "More than 5 years", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(6, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Waiting Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is temperature managed in waiting areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(7, 'What type of lighting is used in waiting areas?', '["Incandescent", "Fluorescent", "LED", "Other (please specify)"]');

-- Insert Questions for Laboratories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is energy usage monitored and managed in the laboratory?', '["Through a building management system", "Regular manual readings", "Utility bills", "Not monitored"]'),
(8, 'What type of lighting technology is predominantly used in the laboratory?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');


-- Insert energy_usage_areas for "Automobile Dealership"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(3, 'Showroom'),
(3, 'Service Bays'),
(3, 'Offices'),
(3, 'Customer Waiting Areas'),
(3, 'Exterior Lot Lighting'),
(3, 'HVAC Systems'),
(3, 'Car Wash Facilities'),
(3, 'Parts Storage Areas');

-- Insert Questions for Showroom
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in the showroom during peak hours?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What percentage of showroom lighting is LED?', '["None", "Less than 25%", "25%-50%", "51%-75%", "More than 75%"]');

-- Insert Questions for Service Bays
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How frequently are the service bay tools and equipment serviced to ensure energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(2, 'What type of lighting is used in the service bays?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(3, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Customer Waiting Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How is the temperature managed in customer waiting areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(4, 'What type of lighting is used in customer waiting areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Exterior Lot Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How is the exterior lot lighting controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]'),
(5, 'What type of exterior lighting technology is used?', '["Incandescent", "Fluorescent", "LED", "High-Pressure Sodium", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of HVAC system is used in the dealership?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(6, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Car Wash Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of water heating system is used in the car wash facilities?', '["Electric", "Gas", "Solar", "None", "Other (please specify)"]'),
(7, 'How frequently is the car wash equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Parts Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in parts storage areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of lighting is used in parts storage areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');


-- Insert energy_usage_areas for "Bank Branch"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(4, 'Customer Service Areas'),
(4, 'Offices'),
(4, 'ATMs'),
(4, 'Vaults'),
(4, 'HVAC Systems'),
(4, 'Lighting'),
(4, 'Security Systems'),
(4, 'IT Server Rooms');

-- Insert Questions for Customer Service Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in customer service areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in customer service areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for ATMs
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How is the lighting for ATMs controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]'),
(3, 'What type of lighting technology is used for ATMs?', '["Incandescent", "Fluorescent", "LED", "High-Pressure Sodium", "Other (please specify)"]');

-- Insert Questions for Vaults
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How is the temperature managed in vaults?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(4, 'What type of lighting is used in vaults?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of HVAC system is used in the bank branch?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(5, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of indoor lighting technology is predominantly used?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(6, 'How is the exterior lighting controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the bank branch?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');


-- Insert energy_usage_areas for "Bowling Alley"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(5, 'Bowling Lanes'),
(5, 'Arcade Game Areas'),
(5, 'Food and Beverage Areas'),
(5, 'HVAC Systems'),
(5, 'Restrooms'),
(5, 'Offices'),
(5, 'Maintenance and Equipment Rooms'),
(5, 'Lighting');

-- Insert Questions for Bowling Lanes
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the bowling lanes?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How often is the bowling equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Arcade Game Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of gaming equipment is predominantly used in the arcade areas?', '["Electric", "Mechanical", "Mixed", "Other"]'),
(2, 'How frequently is the gaming equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Food and Beverage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of cooking equipment is primarily used in the food and beverage areas?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(3, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of HVAC system is used in the bowling alley?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(5, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(6, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Maintenance and Equipment Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in maintenance and equipment rooms?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often is the equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of indoor lighting technology is predominantly used?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(8, 'How is the exterior lighting controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]');


-- Insert energy_usage_areas for "College/University"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(6, 'Classrooms'),
(6, 'Laboratories'),
(6, 'Dormitories'),
(6, 'Libraries'),
(6, 'Cafeterias'),
(6, 'Athletic Facilities'),
(6, 'HVAC Systems'),
(6, 'Offices');

-- Insert Questions for Classrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in classrooms during peak hours?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What percentage of classroom equipment (e.g., projectors, computers) is energy-efficient or ENERGY STAR rated?', '["None", "Less than 25%", "25%-50%", "51%-75%", "More than 75%"]');

-- Insert Questions for Laboratories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(2, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Dormitories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How is the temperature managed in dormitories?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(3, 'What type of lighting is used in dormitories?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Libraries
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How is energy usage monitored and managed in the library?', '["Through a building management system", "Regular manual readings", "Utility bills", "Not monitored"]'),
(4, 'What type of lighting technology is predominantly used in the library?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');

-- Insert Questions for Cafeterias
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(5, 'How often is the cafeteria kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Athletic Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of HVAC system is used in the gymnasium?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(6, 'How often is gymnasium equipment serviced to ensure energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of energy recovery systems are in place for the HVAC system?', '["Heat recovery ventilators (HRV)", "Energy recovery ventilators (ERV)", "None", "Not sure", "Other (please specify)"]'),
(7, 'How frequently is the HVAC system upgraded or retrofitted to improve energy efficiency?', '["Every year", "Every 2-3 years", "Every 4-5 years", "More than 5 years", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(8, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');


-- Insert energy_usage_areas for "Convenience Store Without Gas Station"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(7, 'Refrigeration Units'),
(7, 'Lighting'),
(7, 'HVAC Systems'),
(7, 'Point of Sale Systems'),
(7, 'Security Systems'),
(7, 'Storage Areas'),
(7, 'Food Preparation Areas'),
(7, 'Restrooms');

-- Insert Questions for Refrigeration Units
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(1, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of indoor lighting technology is predominantly used?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(2, 'How is the exterior lighting controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the convenience store?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Point of Sale Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(4, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the convenience store?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Food Preparation Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of cooking equipment is primarily used in food preparation areas?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(7, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');


-- Insert energy_usage_areas for "Courthouse"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(8, 'Courtrooms'),
(8, 'Offices'),
(8, 'Holding Cells'),
(8, 'HVAC Systems'),
(8, 'Lighting'),
(8, 'Security Systems'),
(8, 'Public Areas'),
(8, 'IT Server Rooms');

-- Insert Questions for Courtrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in courtrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How often is the courtroom equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Holding Cells
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting is used in holding cells?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(3, 'How is the temperature managed in holding cells?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of HVAC system is used in the courthouse?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of indoor lighting technology is predominantly used?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the exterior lighting controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the courthouse?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Public Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the temperature managed in public areas (lobbies, waiting areas)?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(7, 'What type of lighting is used in public areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');


-- Insert energy_usage_areas for "Data Center"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(9, 'Server Racks'),
(9, 'Cooling Systems'),
(9, 'Backup Power Systems'),
(9, 'Lighting'),
(9, 'Security Systems'),
(9, 'Office Areas'),
(9, 'IT Equipment'),
(9, 'Networking Equipment');

-- Insert Questions for Server Racks
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of cooling system is used for the server racks?', '["Air-cooled", "Liquid-cooled", "Hybrid", "Other"]'),
(1, 'How often is the server equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Cooling Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of cooling system is used in the data center?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]'),
(2, 'How frequently is the cooling system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Backup Power Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of backup power system is used?', '["Diesel generators", "UPS (Uninterruptible Power Supply)", "Flywheel energy storage", "Other"]'),
(3, 'How often is the backup power system tested?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the data center?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the data center?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the data center?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Office Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(6, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for IT Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How often is the IT equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(7, 'What type of energy-efficient practices are implemented for IT equipment?', '["Virtualization", "Power management settings", "Efficient cooling systems", "None", "Other (please specify)"]');

-- Insert Questions for Networking Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How often is the networking equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(8, 'What type of energy-efficient practices are implemented for networking equipment?', '["Power management settings", "Efficient cooling systems", "None", "Other (please specify)"]');


-- Insert energy_usage_areas for "Distribution Center"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(10, 'Warehouse Lighting'),
(10, 'HVAC Systems'),
(10, 'Conveyor Belts'),
(10, 'Forklifts and Material Handling Equipment'),
(10, 'Offices'),
(10, 'Refrigeration Units'),
(10, 'Security Systems'),
(10, 'Loading Docks');

-- Insert Questions for Warehouse Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the warehouse?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the warehouse lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the warehouse?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Conveyor Belts
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How often are the conveyor belts serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(3, 'What type of energy-efficient practices are implemented for conveyor belts?', '["Regular maintenance", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Forklifts and Material Handling Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of forklifts are predominantly used?', '["Electric", "Gas", "Diesel", "Other (please specify)"]'),
(4, 'How often is the material handling equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Refrigeration Units
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(6, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the distribution center?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Loading Docks
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in the loading docks?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How often are the loading docks inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');


-- Insert energy_usage_areas for "Enclosed Mall"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(11, 'Retail Store Lighting'),
(11, 'Common Area Lighting'),
(11, 'HVAC Systems'),
(11, 'Food Courts'),
(11, 'Escalators and Elevators'),
(11, 'Security Systems'),
(11, 'Parking Garage Lighting'),
(11, 'Maintenance and Storage Areas');

-- Insert Questions for Retail Store Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in retail stores?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the lighting in retail stores controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Common Area Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the common area lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the enclosed mall?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Food Courts
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of cooking equipment is primarily used in the food courts?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(4, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Escalators and Elevators
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How often are the escalators and elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(5, 'What type of energy-efficient practices are implemented for escalators and elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the enclosed mall?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Parking Garage Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in the parking garages?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the parking garage lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Maintenance and Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How often are the maintenance and storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(8, 'What type of energy-efficient practices are implemented in maintenance and storage areas?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');


-- Insert energy_usage_areas for "Financial Office"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(12, 'Office Lighting'),
(12, 'HVAC Systems'),
(12, 'IT Server Rooms'),
(12, 'Security Systems'),
(12, 'Break Rooms'),
(12, 'Conference Rooms'),
(12, 'Elevators'),
(12, 'Restrooms');

-- Insert Questions for Office Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in office areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the financial office?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(3, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of security system is used in the financial office?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(4, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Break Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How is the lighting managed in break rooms?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(5, 'What type of energy-efficient practices are implemented in break rooms?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');

-- Insert Questions for Conference Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in conference rooms?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'What type of energy-efficient practices are implemented in conference rooms?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');

-- Insert Questions for Elevators
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How often are the elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(7, 'What type of energy-efficient practices are implemented for elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');


-- Insert energy_usage_areas for "Fitness Center/Health Club/Gym"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(13, 'Workout Areas'),
(13, 'Swimming Pools'),
(13, 'Saunas/Steam Rooms'),
(13, 'Locker Rooms'),
(13, 'HVAC Systems'),
(13, 'Lighting'),
(13, 'Office Areas'),
(13, 'Laundry Facilities');

-- Insert Questions for Workout Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in workout areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How often is the workout equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Swimming Pools
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of heating system is used for swimming pools?', '["Electric", "Gas", "Solar", "None", "Other (please specify)"]'),
(2, 'How often is the swimming pool equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Saunas/Steam Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of heating system is used for saunas/steam rooms?', '["Electric", "Gas", "Wood", "None", "Other (please specify)"]'),
(3, 'How often is the sauna/steam room equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Locker Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting is used in locker rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(4, 'How is the temperature managed in locker rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of HVAC system is used in the fitness center?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(5, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting technology is predominantly used in the fitness center?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(6, 'How is the lighting controlled in the fitness center?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Office Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(7, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Laundry Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(8, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');


-- Insert energy_usage_areas for "Food Sales"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(14, 'Refrigeration Units'),
(14, 'Lighting'),
(14, 'HVAC Systems'),
(14, 'Food Preparation Areas'),
(14, 'Point of Sale Systems'),
(14, 'Security Systems'),
(14, 'Storage Areas'),
(14, 'Restrooms');

-- Insert Questions for Refrigeration Units
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(1, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of indoor lighting technology is predominantly used?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(2, 'How is the exterior lighting controlled?', '["Manual switches", "Automatic timers", "Light sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the food sales area?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Food Preparation Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of cooking equipment is primarily used in food preparation areas?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(4, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Point of Sale Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(5, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the food sales area?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');


-- Insert energy_usage_areas for "Food Service"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(15, 'Kitchen Equipment'),
(15, 'Refrigeration Units'),
(15, 'Dining Area Lighting'),
(15, 'HVAC Systems'),
(15, 'Point of Sale Systems'),
(15, 'Security Systems'),
(15, 'Restrooms'),
(15, 'Storage Areas');

-- Insert Questions for Kitchen Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of kitchen equipment is primarily used?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(1, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Refrigeration Units
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(2, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Insert Questions for Dining Area Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting is used in the dining area?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(3, 'How is the dining area lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of HVAC system is used in the food service area?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Point of Sale Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(5, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the food service area?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');


-- Insert energy_usage_areas for "Hospital (General Medical & Surgical)"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(16, 'Patient Rooms'),
(16, 'Operating Rooms'),
(16, 'Medical Imaging Equipment'),
(16, 'Laboratories'),
(16, 'HVAC Systems'),
(16, 'Offices'),
(16, 'Cafeterias'),
(16, 'Laundry Facilities');

-- Insert Questions for Patient Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in patient rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in patient rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Operating Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of medical equipment is predominantly used in operating rooms?', '["Electric", "Gas", "Mixed", "Other"]'),
(2, 'How often is the operating room equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Medical Imaging Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of medical imaging equipment is predominantly used?', '["MRI", "CT scans", "X-rays", "Ultrasound", "Other"]'),
(3, 'How often is the medical imaging equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Laboratories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(4, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of HVAC system is used in the hospital?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(5, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(6, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Cafeterias
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(7, 'How often is the cafeteria kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Laundry Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(8, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');


-- Insert energy_usage_areas for "Hotel"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(17, 'Guest Rooms'),
(17, 'Lobby Areas'),
(17, 'Restaurants and Bars'),
(17, 'Conference Rooms'),
(17, 'HVAC Systems'),
(17, 'Pool and Spa Areas'),
(17, 'Laundry Facilities'),
(17, 'Lighting');

-- Insert Questions for Guest Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in guest rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in guest rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Lobby Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in lobby areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in lobby areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Restaurants and Bars
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of cooking equipment is primarily used in restaurants and bars?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(3, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Conference Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How is the lighting managed in conference rooms?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(4, 'What type of energy-efficient practices are implemented in conference rooms?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of HVAC system is used in the hotel?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(5, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Pool and Spa Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of heating system is used for pool and spa areas?', '["Electric", "Gas", "Solar", "None", "Other (please specify)"]'),
(6, 'How often is the pool and spa equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Laundry Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(7, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of indoor lighting technology is predominantly used in the hotel?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(8, 'How is the lighting controlled in the hotel?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');


-- Insert energy_usage_areas for "K-12 School"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(18, 'Classrooms'),
(18, 'Offices'),
(18, 'Gymnasiums'),
(18, 'Cafeterias'),
(18, 'Libraries'),
(18, 'HVAC Systems'),
(18, 'Lighting'),
(18, 'Computer Labs');

-- Insert Questions for Classrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in classrooms during peak hours?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What percentage of classroom equipment (e.g., projectors, computers) is energy-efficient or ENERGY STAR rated?', '["None", "Less than 25%", "25%-50%", "51%-75%", "More than 75%"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Gymnasiums
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the gymnasium?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How often is gymnasium equipment serviced to ensure energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Cafeterias
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(4, 'How often is the cafeteria kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Libraries
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How is energy usage monitored and managed in the library?', '["Through a building management system", "Regular manual readings", "Utility bills", "Not monitored"]'),
(5, 'What type of lighting technology is predominantly used in the library?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of energy recovery systems are in place for the HVAC system?', '["Heat recovery ventilators (HRV)", "Energy recovery ventilators (ERV)", "None", "Not sure", "Other (please specify)"]'),
(6, 'How frequently is the HVAC system upgraded or retrofitted to improve energy efficiency?', '["Every year", "Every 2-3 years", "Every 4-5 years", "More than 5 years", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of indoor lighting technology is predominantly used in the school?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(7, 'How is the lighting controlled in the school?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Computer Labs
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How often are computers and related equipment in the computer lab turned off or put into power-saving mode when not in use?', '["Always", "Frequently", "Occasionally", "Rarely", "Never"]'),
(8, 'What measures are taken to reduce energy consumption in computer labs?', '["Use of energy-efficient computers and monitors", "Implementation of automatic shutdown policies", "Use of virtual desktops", "None", "Other (please specify)"]');


-- Insert energy_usage_areas for "Laboratory"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(19, 'Lab Equipment'),
(19, 'HVAC Systems'),
(19, 'Lighting'),
(19, 'Safety Equipment'),
(19, 'Offices'),
(19, 'Storage Areas'),
(19, 'Refrigeration Units'),
(19, 'IT Server Rooms');

-- Insert Questions for Lab Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(1, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the laboratory?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting technology is predominantly used in the laboratory?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(3, 'How is the lighting controlled in the laboratory?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Safety Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of safety equipment is predominantly used in the laboratory?', '["Fume hoods", "Biosafety cabinets", "Eye wash stations", "Fire suppression systems", "Other"]'),
(4, 'How often is the safety equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Refrigeration Units
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(7, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');


-- Insert energy_usage_areas for "Library"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(20, 'Reading Areas'),
(20, 'Lighting'),
(20, 'HVAC Systems'),
(20, 'Computer Labs'),
(20, 'Offices'),
(20, 'Security Systems'),
(20, 'Storage Areas'),
(20, 'Meeting Rooms');

-- Insert Questions for Reading Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in reading areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the temperature managed in reading areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting technology is predominantly used in the library?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(2, 'How is the lighting controlled in the library?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the library?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Computer Labs
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How often are computers and related equipment in the computer lab turned off or put into power-saving mode when not in use?', '["Always", "Frequently", "Occasionally", "Rarely", "Never"]'),
(4, 'What measures are taken to reduce energy consumption in computer labs?', '["Use of energy-efficient computers and monitors", "Implementation of automatic shutdown policies", "Use of virtual desktops", "None", "Other (please specify)"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the library?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Meeting Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in meeting rooms?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'What type of energy-efficient practices are implemented in meeting rooms?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');


-- Insert energy_usage_areas for "Lifestyle Center"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(21, 'Retail Store Lighting'),
(21, 'Common Area Lighting'),
(21, 'HVAC Systems'),
(21, 'Food Courts'),
(21, 'Escalators and Elevators'),
(21, 'Security Systems'),
(21, 'Parking Garage Lighting'),
(21, 'Maintenance and Storage Areas');

-- Insert Questions for Retail Store Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in retail stores?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the lighting in retail stores controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Common Area Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the common area lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the lifestyle center?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Food Courts
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of cooking equipment is primarily used in the food courts?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(4, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Escalators and Elevators
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How often are the escalators and elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(5, 'What type of energy-efficient practices are implemented for escalators and elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the lifestyle center?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Parking Garage Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in the parking garages?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the parking garage lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Maintenance and Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How often are the maintenance and storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(8, 'What type of energy-efficient practices are implemented in maintenance and storage areas?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');


-- Insert energy_usage_areas for "Mailing Center/Post Office"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(22, 'Sorting Equipment'),
(22, 'Lighting'),
(22, 'HVAC Systems'),
(22, 'Offices'),
(22, 'Customer Service Areas'),
(22, 'Storage Areas'),
(22, 'Security Systems'),
(22, 'IT Server Rooms');

-- Insert Questions for Sorting Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of sorting equipment is predominantly used?', '["Manual", "Automated", "Mixed", "Other"]'),
(1, 'How often is the sorting equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting technology is predominantly used in the mailing center?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(2, 'How is the lighting controlled in the mailing center?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the mailing center?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Customer Service Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How is the temperature managed in customer service areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(5, 'What type of lighting is used in customer service areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the mailing center?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');


-- Insert energy_usage_areas for "Manufacturing/Industrial Plant"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(23, 'Production Lines'),
(23, 'HVAC Systems'),
(23, 'Lighting'),
(23, 'Office Areas'),
(23, 'Storage Areas'),
(23, 'Maintenance Areas'),
(23, 'Safety Equipment'),
(23, 'IT Server Rooms');

-- Insert Questions for Production Lines
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of equipment is predominantly used in production lines?', '["Electric", "Gas", "Mixed", "Other"]'),
(1, 'How frequently is production line equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the manufacturing plant?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting technology is predominantly used in the manufacturing plant?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(3, 'How is the lighting controlled in the manufacturing plant?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Office Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(5, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Maintenance Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in maintenance areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the maintenance areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Safety Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of safety equipment is predominantly used in the manufacturing plant?', '["Fire suppression systems", "Eye wash stations", "Safety showers", "Other"]'),
(7, 'How often is the safety equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');


-- Insert energy_usage_areas for "Medical Office"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(24, 'Exam Rooms'),
(24, 'Offices'),
(24, 'HVAC Systems'),
(24, 'Lighting'),
(24, 'Laboratories'),
(24, 'Waiting Areas'),
(24, 'Storage Areas'),
(24, 'IT Server Rooms');

-- Insert Questions for Exam Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in exam rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in exam rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the medical office?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the medical office?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the medical office?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Laboratories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(5, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Waiting Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the temperature managed in waiting areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(6, 'What type of lighting is used in waiting areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');


