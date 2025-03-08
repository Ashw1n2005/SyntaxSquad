import pandas as pd
import numpy as np
import joblib
import xgboost as xgb
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, MultiLabelBinarizer
from sklearn.metrics import accuracy_score

df = pd.read_csv("ai/health_dataset.csv")

label_encoder_exercise = LabelEncoder()
label_encoder_diet = LabelEncoder()

df["Exercise"] = label_encoder_exercise.fit_transform(df["Exercise"])  
df["Diet"] = label_encoder_diet.fit_transform(df["Diet"])  

mlb = MultiLabelBinarizer()
y = mlb.fit_transform(df["Hashtags"].apply(lambda x: x.split(',')))  

X = df[["Water Intake (L)", "Sleep Hours", "Exercise", "Diet"]]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

xgb_model = xgb.XGBClassifier(objective="binary:logistic", eval_metric="logloss", use_label_encoder=False)
xgb_model.fit(X_train, y_train)

joblib.dump(xgb_model, "ai/model/xgboost_model.pkl")
joblib.dump(label_encoder_exercise, "ai/model/label_encoder_exercise.pkl")
joblib.dump(label_encoder_diet, "ai/model/label_encoder_diet.pkl")
joblib.dump(mlb, "ai/model/label_encoder_hashtags.pkl")

y_pred = xgb_model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred.round())  
print(f"✅ XGBoost Model Accuracy: {accuracy:.2f}")
