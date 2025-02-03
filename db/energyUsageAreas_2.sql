\c rebrand

-- Insert Categories for "Movie Theater"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(25, 'Screening Rooms'),
(25, 'Lobby Areas'),
(25, 'Concession Stands'),
(25, 'HVAC Systems'),
(25, 'Lighting'),
(25, 'Restrooms'),
(25, 'Security Systems'),
(25, 'Offices');

-- Insert Questions for Screening Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in screening rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in screening rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Lobby Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in lobby areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in lobby areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Concession Stands
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of cooking equipment is primarily used in concession stands?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(3, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of HVAC system is used in the movie theater?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting technology is predominantly used in the movie theater?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the movie theater?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the movie theater?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(8, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Categories for "Multifamily Housing"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(26, 'Individual Apartments'),
(26, 'Common Areas'),
(26, 'HVAC Systems'),
(26, 'Laundry Facilities'),
(26, 'Lighting'),
(26, 'Elevators'),
(26, 'Parking Garages'),
(26, 'Security Systems');

-- Insert Questions for Individual Apartments
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in individual apartments?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in individual apartments?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Common Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in common areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the multifamily housing?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Laundry Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(4, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of indoor lighting technology is predominantly used in the multifamily housing?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the multifamily housing?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Elevators
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How often are the elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(6, 'What type of energy-efficient practices are implemented for elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Parking Garages
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in parking garages?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the parking garage lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the multifamily housing?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Museum"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(27, 'Exhibit Halls'),
(27, 'HVAC Systems'),
(27, 'Lighting'),
(27, 'Offices'),
(27, 'Security Systems'),
(27, 'Storage Areas'),
(27, 'Cafeterias'),
(27, 'Gift Shops');

-- Insert Questions for Exhibit Halls
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is predominantly used in exhibit halls?', '["Incandescent", "Fluorescent", "LED", "Halogen", "Other"]'),
(1, 'How is the temperature managed in exhibit halls?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the museum?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How is the lighting in the museum controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(3, 'What type of lighting technology is predominantly used in the museum?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the museum?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Cafeterias
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(7, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Gift Shops
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of lighting is used in gift shops?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(8, 'How is the temperature managed in gift shops?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Categories for "Non-Refrigerated Warehouse"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(28, 'Warehouse Lighting'),
(28, 'HVAC Systems'),
(28, 'Material Handling Equipment'),
(28, 'Offices'),
(28, 'Security Systems'),
(28, 'Loading Docks'),
(28, 'Maintenance Areas'),
(28, 'Storage Areas');

-- Insert Questions for Warehouse Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the warehouse?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the warehouse lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the warehouse?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Material Handling Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of material handling equipment is predominantly used?', '["Electric", "Gas", "Diesel", "Other (please specify)"]'),
(3, 'How often is the material handling equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the warehouse?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Loading Docks
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in the loading docks?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How often are the loading docks inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Maintenance Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in maintenance areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the maintenance areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Office"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(29, 'Office Lighting'),
(29, 'HVAC Systems'),
(29, 'IT Server Rooms'),
(29, 'Security Systems'),
(29, 'Break Rooms'),
(29, 'Conference Rooms'),
(29, 'Elevators'),
(29, 'Restrooms');

-- Insert Questions for Office Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in office areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the office?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(3, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of security system is used in the office?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
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

-- Insert Categories for "Other - Education"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(30, 'Classrooms'),
(30, 'Offices'),
(30, 'Laboratories'),
(30, 'Libraries'),
(30, 'Cafeterias'),
(30, 'HVAC Systems'),
(30, 'Lighting'),
(30, 'Gymnasiums');

-- Insert Questions for Classrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in classrooms during peak hours?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What percentage of classroom equipment (e.g., projectors, computers) is energy-efficient or ENERGY STAR rated?', '["None", "Less than 25%", "25%-50%", "51%-75%", "More than 75%"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Laboratories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(3, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Libraries
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How is energy usage monitored and managed in the library?', '["Through a building management system", "Regular manual readings", "Utility bills", "Not monitored"]'),
(4, 'What type of lighting technology is predominantly used in the library?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]');

-- Insert Questions for Cafeterias
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of cooking equipment is primarily used in the cafeteria?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(5, 'How often is the cafeteria kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of energy recovery systems are in place for the HVAC system?', '["Heat recovery ventilators (HRV)", "Energy recovery ventilators (ERV)", "None", "Not sure", "Other (please specify)"]'),
(6, 'How frequently is the HVAC system upgraded or retrofitted to improve energy efficiency?', '["Every year", "Every 2-3 years", "Every 4-5 years", "More than 5 years", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of indoor lighting technology is predominantly used in the school?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(7, 'How is the lighting controlled in the school?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Gymnasiums
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of HVAC system is used in the gymnasium?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(8, 'How often is gymnasium equipment serviced to ensure energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Other - Entertainment/Public Assembly"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(31, 'Event Halls'),
(31, 'Lighting'),
(31, 'HVAC Systems'),
(31, 'Sound and AV Equipment'),
(31, 'Offices'),
(31, 'Restrooms'),
(31, 'Security Systems'),
(31, 'Concession Stands');

-- Insert Questions for Event Halls
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is predominantly used in event halls?', '["Incandescent", "Fluorescent", "LED", "Halogen", "Other"]'),
(1, 'How is the temperature managed in event halls?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting technology is predominantly used in public assembly areas?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(2, 'How is the lighting controlled in public assembly areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the public assembly areas?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Sound and AV Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of sound and AV equipment is predominantly used?', '["Electric", "Wireless", "Mixed", "Other"]'),
(4, 'How often is the sound and AV equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(6, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in public assembly areas?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Concession Stands
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of cooking equipment is primarily used in concession stands?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(8, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Other - Lodging/Residential"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(32, 'Guest Rooms'),
(32, 'Common Areas'),
(32, 'HVAC Systems'),
(32, 'Laundry Facilities'),
(32, 'Lighting'),
(32, 'Elevators'),
(32, 'Parking Garages'),
(32, 'Security Systems');

-- Insert Questions for Guest Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in guest rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in guest rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Common Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in common areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in common areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the lodging/residential facility?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Laundry Facilities
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of washing machines are predominantly used?', '["Top-load", "Front-load", "Industrial", "Other (please specify)"]'),
(4, 'How often are the laundry facilities serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of indoor lighting technology is predominantly used in the lodging/residential facility?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(5, 'How is the lighting controlled in the lodging/residential facility?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Elevators
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How often are the elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(6, 'What type of energy-efficient practices are implemented for elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Parking Garages
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in parking garages?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the parking garage lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of security system is used in the lodging/residential facility?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(8, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Other - Mall"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(33, 'Retail Store Lighting'),
(33, 'Common Area Lighting'),
(33, 'HVAC Systems'),
(33, 'Food Courts'),
(33, 'Escalators and Elevators'),
(33, 'Security Systems'),
(33, 'Parking Garage Lighting'),
(33, 'Maintenance and Storage Areas');

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
(3, 'What type of HVAC system is used in the mall?', '["Central HVAC", "Split system", "Individual units", "Other (please specify)"]'),
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
(6, 'What type of security system is used in the mall?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Parking Garage Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in the parking garages?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the parking garage lighting controlled?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Maintenance and Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How often are the maintenance and storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(8, 'What type of energy-efficient practices are implemented in maintenance and storage areas?', '["LED lighting", "Timed lighting schedules", "Motion-activated lighting", "Energy-efficient HVAC systems", "None", "Other (please specify)"]');

-- Insert Categories for "Other - Public Services"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(34, 'Service Counters'),
(34, 'Offices'),
(34, 'HVAC Systems'),
(34, 'Lighting'),
(34, 'Security Systems'),
(34, 'IT Server Rooms'),
(34, 'Restrooms'),
(34, 'Storage Areas');

-- Insert Questions for Service Counters
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the lighting managed at service counters?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(1, 'What type of lighting is used at service counters?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the public service building?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the public service building?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the public service building?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of security system is used in the public service building?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(5, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(6, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Other - Recreation"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(35, 'Activity Areas'),
(35, 'HVAC Systems'),
(35, 'Lighting'),
(35, 'Offices'),
(35, 'Restrooms'),
(35, 'Storage Areas'),
(35, 'Security Systems'),
(35, 'Concession Stands');

-- Insert Questions for Activity Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in activity areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the temperature managed in activity areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the recreation building?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of lighting technology is predominantly used in the recreation building?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(3, 'How is the lighting controlled in the recreation building?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(4, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(5, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of security system is used in the recreation building?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(7, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Concession Stands
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of cooking equipment is primarily used in concession stands?', '["Electric", "Gas", "Induction", "Mixed", "Other (please specify)"]'),
(8, 'How often is the kitchen equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Other - Restaurant/Bar"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(36, 'Kitchen Equipment'),
(36, 'Refrigeration Units'),
(36, 'Dining Area Lighting'),
(36, 'HVAC Systems'),
(36, 'Point of Sale Systems'),
(36, 'Security Systems'),
(36, 'Restrooms'),
(36, 'Storage Areas');

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
(4, 'What type of HVAC system is used in the restaurant/bar?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(4, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Point of Sale Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'What type of point of sale system is used?', '["Traditional cash registers", "Electronic point of sale (EPOS)", "Mobile point of sale (mPOS)", "Other (please specify)"]'),
(5, 'How often is the point of sale system serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the restaurant/bar?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Restrooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'What type of lighting is used in restrooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(7, 'How is the temperature managed in restrooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(8, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Other - Specialty Hospital"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(37, 'Patient Rooms'),
(37, 'Operating Rooms'),
(37, 'Medical Imaging Equipment'),
(37, 'Laboratories'),
(37, 'HVAC Systems'),
(37, 'Offices'),
(37, 'Cafeterias'),
(37, 'Laundry Facilities');

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
(5, 'What type of HVAC system is used in the specialty hospital?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
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

-- Insert Categories for "Other - Technology/Science"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(38, 'Laboratories'),
(38, 'Office Areas'),
(38, 'HVAC Systems'),
(38, 'Lighting'),
(38, 'IT Server Rooms'),
(38, 'Security Systems'),
(38, 'Storage Areas'),
(38, 'Research Equipment');

-- Insert Questions for Laboratories
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of equipment is predominantly used in laboratories?', '["Electric", "Gas", "Mixed", "Other"]'),
(1, 'How frequently is laboratory equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Office Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(2, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the technology/science building?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the technology/science building?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the technology/science building?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for IT Server Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How is the temperature managed in the IT/server room?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(5, 'What type of cooling system is used in the IT/server room?', '["CRAC (Computer Room Air Conditioner)", "Chilled water system", "Direct-to-chip cooling", "Other"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'What type of security system is used in the technology/science building?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(6, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Storage Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How is the lighting managed in storage areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(7, 'How often are the storage areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Research Equipment
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'What type of research equipment is predominantly used?', '["Electric", "Gas", "Mixed", "Other"]'),
(8, 'How frequently is research equipment serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Categories for "Outpatient Rehabilitation/Physical Therapy"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(39, 'Treatment Rooms'),
(39, 'Exercise Areas'),
(39, 'HVAC Systems'),
(39, 'Lighting'),
(39, 'Offices'),
(39, 'Waiting Areas'),
(39, 'Storage Areas'),
(39, 'IT Server Rooms');

-- Insert Questions for Treatment Rooms
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'How is the temperature managed in treatment rooms?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]'),
(1, 'What type of lighting is used in treatment rooms?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]');

-- Insert Questions for Exercise Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of lighting is used in exercise areas?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(2, 'How is the temperature managed in exercise areas?', '["Centrally controlled by a building management system", "Individually controlled by room thermostats", "A mix of both", "Not actively managed"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of HVAC system is used in the outpatient rehabilitation facility?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(3, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of lighting technology is predominantly used in the outpatient rehabilitation facility?', '["Incandescent", "Fluorescent", "LED", "Compact fluorescent", "Other (please specify)"]'),
(4, 'How is the lighting controlled in the outpatient rehabilitation facility?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for Offices
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(5, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

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

-- Insert Categories for "Parking"
INSERT INTO energy_usage_areas (property_type_id, name) VALUES 
(40, 'Lighting'),
(40, 'HVAC Systems'),
(40, 'Security Systems'),
(40, 'Payment Systems'),
(40, 'Elevators'),
(40, 'Maintenance Areas'),
(40, 'Office Areas'),
(40, 'Electric Vehicle Charging Stations');

-- Insert Questions for Lighting
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(1, 'What type of lighting is used in the parking facility?', '["Fluorescent", "LED", "Halogen", "Incandescent", "Other"]'),
(1, 'How is the lighting controlled in the parking facility?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]');

-- Insert Questions for HVAC Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(2, 'What type of HVAC system is used in the parking facility (if enclosed)?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]'),
(2, 'How frequently is the HVAC system serviced?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Security Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(3, 'What type of security system is used in the parking facility?', '["CCTV", "Motion detectors", "Access control", "Alarm systems", "Other (please specify)"]'),
(3, 'How often is the security system inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Payment Systems
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(4, 'What type of payment systems are used in the parking facility?', '["Manual payment", "Automated payment kiosks", "Mobile payment systems", "Other (please specify)"]'),
(4, 'How often are the payment systems serviced or upgraded?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Elevators
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(5, 'How often are the elevators serviced for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(5, 'What type of energy-efficient practices are implemented for elevators?', '["Regenerative drives", "Energy-efficient motors", "Automated control systems", "None", "Other (please specify)"]');

-- Insert Questions for Maintenance Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(6, 'How is the lighting managed in maintenance areas?', '["Manual switches", "Automatic timers", "Motion sensors", "Smart lighting systems"]'),
(6, 'How often are the maintenance areas inspected for energy efficiency?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]');

-- Insert Questions for Office Areas
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(7, 'How are lighting systems in office areas typically controlled?', '["Manual switches", "Occupancy sensors", "Automatic timers", "Smart lighting systems"]'),
(7, 'What type of HVAC system is used in office areas?', '["Central HVAC", "Split system", "Individual room units", "Other (please specify)"]');

-- Insert Questions for Electric Vehicle Charging Stations
INSERT INTO energy_usage_areas_questions (area_id, question_text, valid_choices) VALUES 
(8, 'How often are the electric vehicle charging stations inspected and maintained?', '["Monthly", "Quarterly", "Annually", "As needed", "Never"]'),
(8, 'What type of electric vehicle charging stations are used?', '["Level 1 (120V)", "Level 2 (240V)", "DC Fast Charging", "Other (please specify)"]');






