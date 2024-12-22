import json                                                                                                                                                                                                                
from datetime import datetime, timedelta                                                                                                                                                                                   
from zoneinfo import ZoneInfo                                                                                                                                                                                              
                                                                                                                                                                                                                            
def convert_utc_to_est(utc_timestamp):                                                                                                                                                                                     
     utc_time = datetime.fromisoformat(utc_timestamp.replace('Z', '+00:00'))                                                                                                                                                
     est_time = utc_time.astimezone(ZoneInfo("America/New_York"))                                                                                                                                                           
                                                                                                                                                                                                                            
     # Adjust the date to maintain the same hour, minute, and second                                                                                                                                                        
     utc_date = utc_time.date()                                                                                                                                                                                             
     est_date = est_time.date()                                                                                                                                                                                             
     if est_date != utc_date:                                                                                                                                                                                               
         # If the date changed during conversion, adjust it back                                                                                                                                                            
         est_time = est_time.replace(year=utc_time.year, month=utc_time.month, day=utc_time.day)                                                                                                                            
                                                                                                                                                                                                                            
     return est_time.isoformat()                                                                                                                                                                                            
                                                                                                                                                                                                                            
def update_timestamps_in_file(file_path):                                                                                                                                                                                  
     # Read the JSON file                                                                                                                                                                                                   
     with open(file_path, 'r') as file:                                                                                                                                                                                     
         data = json.load(file)                                                                                                                                                                                             
                                                                                                                                                                                                                            
     # Update timestamps                                                                                                                                                                                                    
     for item in data:                                                                                                                                                                                                      
         item['timestamp'] = convert_utc_to_est(item['timestamp'])                                                                                                                                                          
                                                                                                                                                                                                                            
     # Write the updated data back to the file                                                                                                                                                                              
     with open(file_path, 'w') as file:                                                                                                                                                                                     
         json.dump(data, file, indent=2)                                                                                                                                                                                    
                                                                                                                                                                                                                            
 # Usage                                                                                                                                                                                                                    
file_path = './dummy-data/production-demo.json'                                                                                                                                                                                          
update_timestamps_in_file(file_path)                                                                                                                                                                                       
print(f"File {file_path} has been updated with EST timestamps.")