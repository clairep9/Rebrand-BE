\c rebrand 

-- Insert Categories for "Performing Arts"
INSERT INTO categories (property_type_id, name) VALUES 
(41, 'Stage Lighting'),
(41, 'HVAC Systems'),
(41, 'Sound and AV Equipment'),
(41, 'Offices'),
(41, 'Dressing Rooms'),
(41, 'Audience Seating Areas'),
(41, 'Concession Stands'),
(41, 'Security Systems');

-- Insert Questions for Stage Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is predominantly used for stage lighting?', '["Incandescent", "Fluorescent", "LED", "Halogen", "Other"]'),
(1, 'How is the stage lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the performing arts building?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Sound and AV Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of sound and AV equipment is predominantly used?', '["Electric", "Wireless", "Mixed", "Other"]'),
(3, 'How often is the sound and AV equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Dressing Rooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How is the lighting managed in dressing rooms?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(5, 'How often are the dressing rooms inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Audience Seating Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in audience seating areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the temperature managed in audience seating areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Concession Stands
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of cooking equipment is primarily used in concession stands?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(7, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the performing arts building?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Personal Services"
INSERT INTO categories (property_type_id, name) VALUES 
(42, 'Service Areas'),
(42, 'HVAC Systems'),
(42, 'Lighting'),
(42, 'Offices'),
(42, 'Restrooms'),
(42, 'Laundry Facilities'),
(42, 'Storage Areas'),
(42, 'Security Systems');

-- Insert Questions for Personal Services
-- Questions for Service Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the lighting managed in service areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(1, 'What type of lighting is used in service areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the personal services building?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting technology is predominantly used in the personal services building?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(3, 'How is the lighting controlled in the personal services building?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(5, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Laundry Facilities
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(6, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the personal services building?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Preschool/Daycare"
INSERT INTO categories (property_type_id, name) VALUES 
(43, 'Classrooms'),
(43, 'Play Areas'),
(43, 'HVAC Systems'),
(43, 'Lighting'),
(43, 'Offices'),
(43, 'Restrooms'),
(43, 'Kitchens'),
(43, 'Security Systems');

-- Insert Questions for Preschool/Daycare
-- Questions for Classrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in classrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in classrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Play Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'How is the lighting managed in play areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(2, 'How often are the play areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the preschool/daycare?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the preschool/daycare?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the preschool/daycare?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Kitchens
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of cooking equipment is primarily used in the kitchen?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(7, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the preschool/daycare?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Refrigerated Warehouse"
INSERT INTO categories (property_type_id, name) VALUES 
(44, 'Refrigeration Units'),
(44, 'Warehouse Lighting'),
(44, 'HVAC Systems'),
(44, 'Material Handling Equipment'),
(44, 'Offices'),
(44, 'Security Systems'),
(44, 'Loading Docks'),
(44, 'Maintenance Areas');

-- Insert Questions for Refrigerated Warehouse
-- Questions for Refrigeration Units
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of refrigeration units are predominantly used?', '["Walk-in coolers", "Walk-in freezers", "Reach-in coolers", "Reach-in freezers", "Other (please specify)"]'),
(1, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Warehouse Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in the warehouse?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the warehouse lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the warehouse?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Material Handling Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of material handling equipment is predominantly used?', '["Electric", "Gas", "Diesel", "Other (please specify)"]'),
(4, 'How often is the material handling equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the warehouse?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Loading Docks
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in the loading docks?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How often are the loading docks inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Maintenance Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in maintenance areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the maintenance areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Repair Services"
INSERT INTO categories (property_type_id, name) VALUES 
(45, 'Service Bays'),
(45, 'HVAC Systems'),
(45, 'Lighting'),
(45, 'Offices'),
(45, 'Customer Waiting Areas'),
(45, 'Storage Areas'),
(45, 'Security Systems'),
(45, 'Specialized Equipment');

-- Insert Questions for Repair Services
-- Questions for Service Bays
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in service bays?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the temperature managed in service bays?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the repair services building?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting technology is predominantly used in the repair services building?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(3, 'How is the lighting controlled in the repair services building?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Customer Waiting Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting is used in customer waiting areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(5, 'How is the temperature managed in customer waiting areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the repair services building?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Specialized Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of specialized equipment is predominantly used?', '["Electric", "Gas", "Mixed", "Other"]'),
(8, 'How frequently is specialized equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Residence Hall/Dormitory"
INSERT INTO categories (property_type_id, name) VALUES 
(46, 'Dorm Rooms'),
(46, 'Common Areas'),
(46, 'HVAC Systems'),
(46, 'Laundry Facilities'),
(46, 'Lighting'),
(46, 'Elevators'),
(46, 'Security Systems'),
(46, 'Restrooms');

-- Insert Questions for Residence Hall/Dormitory
-- Questions for Dorm Rooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in dorm rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in dorm rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Common Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in common areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the dormitory?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Laundry Facilities
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(4, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of indoor lighting technology is predominantly used in the dormitory?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the dormitory?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Elevators
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'How often are the elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(6, 'What type of energy-efficient practices are implemented for elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the dormitory?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Categories for "Residential Care Facility"
INSERT INTO categories (property_type_id, name) VALUES 
(47, 'Resident Rooms'),
(47, 'Common Areas'),
(47, 'HVAC Systems'),
(47, 'Dining Areas'),
(47, 'Lighting'),
(47, 'Laundry Facilities'),
(47, 'Medical Equipment'),
(47, 'Security Systems');

-- Insert Questions for Residential Care Facility
-- Questions for Resident Rooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in resident rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in resident rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Common Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in common areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the residential care facility?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Dining Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting is used in dining areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(4, 'How is the temperature managed in dining areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of indoor lighting technology is predominantly used in the residential care facility?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the residential care facility?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Laundry Facilities
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(6, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Medical Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of medical equipment is predominantly used?', '["Electric", "Gas", "Mixed", "Other"]'),
(7, 'How frequently is medical equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the residential care facility?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Restaurant"
INSERT INTO categories (property_type_id, name) VALUES 
(48, 'Kitchen Equipment'),
(48, 'Refrigeration Units'),
(48, 'Dining Area Lighting'),
(48, 'HVAC Systems'),
(48, 'Point Of Sale Systems'),
(48, 'Security Systems'),
(48, 'Restrooms'),
(48, 'Storage Areas');

-- Insert Questions for Restaurant
-- Questions for Kitchen Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of kitchen equipment is primarily used?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(1, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Refrigeration Units
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(2, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Questions for Dining Area Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting is used in the dining area?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(3, 'How is the dining area lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of HVAC system is used in the restaurant?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Point Of Sale Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(5, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the restaurant?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Retail Store"
INSERT INTO categories (property_type_id, name) VALUES 
(49, 'Store Lighting'),
(49, 'HVAC Systems'),
(49, 'Point Of Sale Systems'),
(49, 'Security Systems'),
(49, 'Storage Areas'),
(49, 'Display Lighting'),
(49, 'Customer Service Areas'),
(49, 'Offices');

-- Insert Questions for Retail Store
-- Questions for Store Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the retail store?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the lighting in the retail store controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the retail store?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Point Of Sale Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(3, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of security system is used in the retail store?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(4, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(5, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Display Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used for product displays?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the display lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Customer Service Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in customer service areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'What type of lighting is used in customer service areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(8, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Categories for "Self-Storage Facility"
INSERT INTO categories (property_type_id, name) VALUES 
(50, 'Storage Unit Lighting'),
(50, 'HVAC Systems'),
(50, 'Security Systems'),
(50, 'Office Areas'),
(50, 'Elevators'),
(50, 'Maintenance Areas'),
(50, 'Loading Docks'),
(50, 'Common Areas');

-- Insert Questions for Self-Storage Facility
-- Questions for Storage Unit Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in storage units?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the lighting controlled in storage units?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the self-storage facility (if climate-controlled)?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of security system is used in the self-storage facility?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(3, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Office Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Elevators
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How often are the elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(5, 'What type of energy-efficient practices are implemented for elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Questions for Maintenance Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in maintenance areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the maintenance areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Loading Docks
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in the loading docks?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How often are the loading docks inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Common Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the lighting controlled in common areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Categories for "Senior Care Community"
INSERT INTO categories (property_type_id, name) VALUES 
(51, 'Resident Rooms'),
(51, 'Common Areas'),
(51, 'HVAC Systems'),
(51, 'Dining Areas'),
(51, 'Lighting'),
(51, 'Laundry Facilities'),
(51, 'Medical Equipment'),
(51, 'Security Systems');

-- Insert Questions for Senior Care Community
-- Questions for Resident Rooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in resident rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in resident rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Common Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in common areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the senior care community?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Dining Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting is used in dining areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(4, 'How is the temperature managed in dining areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of indoor lighting technology is predominantly used in the senior care community?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the senior care community?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Laundry Facilities
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(6, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Medical Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of medical equipment is predominantly used?', '["Electric", "Gas", "Mixed", "Other"]'),
(7, 'How frequently is medical equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the senior care community?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Social/Meeting Hall"
INSERT INTO categories (property_type_id, name) VALUES 
(52, 'Event Halls'),
(52, 'Lighting'),
(52, 'HVAC Systems'),
(52, 'Sound and AV Equipment'),
(52, 'Offices'),
(52, 'Restrooms'),
(52, 'Security Systems'),
(52, 'Concession Stands');

-- Insert Questions for Social/Meeting Hall
-- Questions for Event Halls
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is predominantly used in event halls?', '["Incandescent", "Fluorescent", "LED", "Halogen", "Other"]'),
(1, 'How is the temperature managed in event halls?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting technology is predominantly used in the meeting hall?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(2, 'How is the lighting controlled in the meeting hall?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the meeting hall?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Sound and AV Equipment
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of sound and AV equipment is predominantly used?', '["Electric", "Wireless", "Mixed", "Other"]'),
(4, 'How often is the sound and AV equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the meeting hall?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Concession Stands
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of cooking equipment is primarily used in concession stands?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(8, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Strip Mall"
INSERT INTO categories (property_type_id, name) VALUES 
(53, 'Retail Store Lighting'),
(53, 'Common Area Lighting'),
(53, 'HVAC Systems'),
(53, 'Food Courts'),
(53, 'Security Systems'),
(53, 'Parking Lot Lighting'),
(53, 'Maintenance and Storage Areas'),
(53, 'Offices');

-- Insert Questions for Strip Mall
-- Questions for Retail Store Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in retail stores?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the lighting in retail stores controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Common Area Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the common area lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the strip mall?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Food Courts
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of cooking equipment is primarily used in the food courts?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(4, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the strip mall?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Parking Lot Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in the parking lot?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the parking lot lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Maintenance and Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How often are the maintenance and storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(7, 'What type of energy-efficient practices are implemented in maintenance and storage areas?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(8, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');


-- Insert Categories for "Supermarket/Grocery Store"
INSERT INTO categories (property_type_id, name) VALUES 
(54, 'Refrigeration Units'),
(54, 'Store Lighting'),
(54, 'HVAC Systems'),
(54, 'Point Of Sale Systems'),
(54, 'Security Systems'),
(54, 'Storage Areas'),
(54, 'Food Preparation Areas'),
(54, 'Restrooms');

-- Insert Questions for Supermarket/Grocery Store
-- Questions for Refrigeration Units
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of refrigeration units are predominantly used?', '["Walk-in coolers", "Walk-in freezers", "Reach-in coolers", "Reach-in freezers", "Other (please specify)"]'),
(1, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Store Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in the store?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the store lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the supermarket/grocery store?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Point Of Sale Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(4, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the supermarket/grocery store?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Food Preparation Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in food preparation areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the lighting controlled in food preparation areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Categories for "Transportation Terminal/Station"
INSERT INTO categories (property_type_id, name) VALUES 
(55, 'Waiting Areas'),
(55, 'HVAC Systems'),
(55, 'Lighting'),
(55, 'Security Systems'),
(55, 'Ticketing Areas'),
(55, 'Restrooms'),
(55, 'Offices'),
(55, 'Maintenance Areas');

-- Insert Questions for Transportation Terminal/Station
-- Questions for Waiting Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in waiting areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in waiting areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the transportation terminal/station?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting technology is predominantly used in the transportation terminal/station?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(3, 'How is the lighting controlled in the transportation terminal/station?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of security system is used in the transportation terminal/station?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(4, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Ticketing Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting is used in ticketing areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(5, 'How is the lighting controlled in ticketing areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(7, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for Maintenance Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in maintenance areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the maintenance areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Urgent Care/Clinic/Other Outpatient"
INSERT INTO categories (property_type_id, name) VALUES 
(56, 'Exam Rooms'),
(56, 'Offices'),
(56, 'HVAC Systems'),
(56, 'Lighting'),
(56, 'Laboratories'),
(56, 'Waiting Areas'),
(56, 'Storage Areas'),
(56, 'IT Server Rooms');

-- Insert Questions for Urgent Care/Clinic/Other Outpatient
-- Questions for Exam Rooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in exam rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in exam rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the urgent care/clinic?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the urgent care/clinic?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the urgent care/clinic?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Laboratories
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(5, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Waiting Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'How is the temperature managed in waiting areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(6, 'What type of lighting is used in waiting areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for IT Server Rooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(8, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');

-- Insert Categories for "Vocational School"
INSERT INTO categories (property_type_id, name) VALUES 
(57, 'Classrooms'),
(57, 'Workshops/Labs'),
(57, 'Offices'),
(57, 'HVAC Systems'),
(57, 'Lighting'),
(57, 'Cafeterias'),
(57, 'Libraries'),
(57, 'Gymnasiums');

-- Insert Questions for Vocational School
-- Questions for Classrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in classrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in classrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Workshops/Labs
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'How is the lighting managed in workshops/labs?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(2, 'How often are the workshops/labs inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(3, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of HVAC system is used in the vocational school?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting technology is predominantly used in the vocational school?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the vocational school?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Cafeterias
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(6, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Libraries
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How is energy usage monitored and managed in the library?', '["Through a building management system", "Regular manual readings", "Utility bills", "Not monitored"]'),
(7, 'What type of lighting technology is predominantly used in the library?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');

-- Questions for Gymnasiums
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of HVAC system is used in the gymnasium?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(8, 'How often is gymnasium equipment serviced to ensure energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Wholesale Club/Supercenter"
INSERT INTO categories (property_type_id, name) VALUES 
(58, 'Store Lighting'),
(58, 'HVAC Systems'),
(58, 'Point Of Sale Systems'),
(58, 'Security Systems'),
(58, 'Storage Areas'),
(58, 'Refrigeration Units'),
(58, 'Customer Service Areas'),
(58, 'Offices');

-- Insert Questions for Wholesale Club/Supercenter
-- Questions for Store Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the store?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the store lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the wholesale club/supercenter?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Point Of Sale Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(3, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of security system is used in the wholesale club/supercenter?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(4, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Storage Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(5, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Refrigeration Units
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'How often are the refrigeration units serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(6, 'What type of refrigeration technology is predominantly used?', '["Standard", "Energy-efficient", "Smart", "Other (please specify)"]');

-- Questions for Customer Service Areas
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in customer service areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'What type of lighting is used in customer service areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(8, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Categories for "Worship Facility"
INSERT INTO categories (property_type_id, name) VALUES 
(59, 'Worship Halls'),
(59, 'Offices'),
(59, 'HVAC Systems'),
(59, 'Lighting'),
(59, 'Fellowship Halls'),
(59, 'Kitchens'),
(59, 'Restrooms'),
(59, 'Security Systems');

-- Insert Questions for Worship Facility
-- Questions for Worship Halls
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is predominantly used in worship halls?', '["Incandescent", "Fluorescent", "LED", "Halogen", "Other"]'),
(1, 'How is the temperature managed in worship halls?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Offices
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Questions for HVAC Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the worship facility?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Lighting
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the worship facility?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the worship facility?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Questions for Fellowship Halls
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting is used in fellowship halls?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(5, 'How is the temperature managed in fellowship halls?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Kitchens
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(6, 'What type of cooking equipment is primarily used in the kitchen?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(6, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Questions for Restrooms
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Questions for Security Systems
INSERT INTO questions (category_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the worship facility?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'); 
