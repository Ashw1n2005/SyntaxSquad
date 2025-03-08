import pandas as pd
import random

exercise_levels = ["None", "Light", "Moderate", "Intense"]
diet_types = ["Unhealthy", "Balanced", "Healthy"]

def generate_hashtags(water, sleep, exercise, diet):
    hashtags = []
    
    if water < 1.5:
        hashtags.append("#Dehydration")

    if sleep < 6:
        hashtags.append("#Sleep")

    if exercise == "None":
        hashtags.append("#NeedExercise")
    elif exercise == "Light":
        hashtags.append("#ActiveLifestyle")
    elif exercise == "Moderate":
        hashtags.append("#Fitness")
    elif exercise == "Intense":
        hashtags.append("#Workout")

    if diet == "Unhealthy":
        hashtags.append("#BetterDiet")

    return ",".join(hashtags)

data = []
for _ in range(1000):
    water_intake = round(random.uniform(1.0, 4.0), 1)  
    sleep_hours = random.randint(4, 9)  
    exercise = random.choice(exercise_levels)
    diet = random.choice(diet_types)
    hashtags = generate_hashtags(water_intake, sleep_hours, exercise, diet)

    data.append([water_intake, sleep_hours, exercise, diet, hashtags])

df = pd.DataFrame(data, columns=["Water Intake (L)", "Sleep Hours", "Exercise", "Diet", "Hashtags"])

df.to_csv("health_dataset.csv", index=False)

print("✅ Complete dataset (50 rows) saved as 'health_dataset.csv'!")
