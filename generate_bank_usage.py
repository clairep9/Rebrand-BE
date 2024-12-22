import datetime
import random
import json

def get_season_factor(month):
    if month in [12, 1, 2]:  # Winter
        return 1.3
    elif month in [6, 7, 8]:  # Summer
        return 1.2
    elif month in [3, 4, 5]:  # Spring
        return 1.0
    else:  # Fall
        return 1.1

def generate_usage_data():
    start_date = datetime.datetime(2023, 9, 1, 0, 0, 0)
    end_date = datetime.datetime(2024, 8, 31, 23, 59, 59)
    current_date = start_date
    data = []

    while current_date <= end_date:
        season_factor = get_season_factor(current_date.month)

        # Determine if it's during business hours
        is_business_hours = 8 <= current_date.hour < 17.5 and current_date.weekday() < 5

        # Base usage for always-on systems (servers, ATMs, minimal HVAC, security)
        base_usage = random.uniform(5, 7.5)  # Adjusted for 15-minute intervals

        if is_business_hours:
            # Higher usage during business hours
            usage = base_usage + random.uniform(7.5, 12.5)  # Adjusted for 15-minute intervals
        else:
            # Lower usage outside business hours
            usage = base_usage + random.uniform(1.25, 3.75)  # Adjusted for 15-minute intervals

        # Apply seasonal factor
        usage *= season_factor

        # Add some randomness
        usage *= random.uniform(0.9, 1.1)

        # Round to 2 decimal places
        usage = round(usage, 2)

        data.append({
            'timestamp': current_date.isoformat(),
            'usage_amount_kwh': usage
        })

        # Increment the current date by 15 minutes
        current_date += datetime.timedelta(minutes=15)

    return data

# Generate the data
usage_data = generate_usage_data()

# Save to a JSON file
with open('bank_branch_usage_data.json', 'w') as file:
    json.dump(usage_data, file, indent=2)

print(f"Generated {len(usage_data)} data points and saved to bank_branch_usage_data.json")
