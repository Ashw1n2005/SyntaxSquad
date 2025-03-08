import pandas as pd
import numpy as np
import joblib

xgb_model = joblib.load("ai/model/xgboost_model.pkl")
label_encoder_exercise = joblib.load("ai/model/label_encoder_exercise.pkl")
label_encoder_diet = joblib.load("ai/model/label_encoder_diet.pkl")
mlb = joblib.load("ai/model/label_encoder_hashtags.pkl")

if "None" not in label_encoder_exercise.classes_:
    label_encoder_exercise.classes_ = np.append(label_encoder_exercise.classes_, "None")

new_user_data = pd.DataFrame([[
    4,  
    6,  
    label_encoder_exercise.transform(["None"])[0],  
    label_encoder_diet.transform(["Healthy"])[0]
]], columns=["Water Intake (L)", "Sleep Hours", "Exercise", "Diet"])

predicted_probs = xgb_model.predict_proba(new_user_data)

predicted_labels = (predicted_probs >= 0.5).astype(int)

predicted_hashtags = mlb.inverse_transform(predicted_labels)

print(f"Predicted Hashtags: {list(predicted_hashtags[0])}")
