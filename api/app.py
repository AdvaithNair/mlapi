from fastapi import FastAPI
import uvicorn
import pickle
import numpy as np
import sklearn

app = FastAPI()

@app.get("/")
async def root():
    return {"Easy": "Money"}

@app.get("/predict/grade")
def predict_grade(sex: int = 1, age: int = 15, absences: int = 0, failures: int = 0, activities: int = 0, internet: int = 1, midterm1: int = 50, midterm2: int = 50):
    model = pickle.load(open("./models/GPA.bin", "rb"))
    given_input = np.array([[sex, age, absences, failures, activities, internet, midterm1, midterm2]])
    prediction = model.predict(given_input)
    return {"grade": prediction[0]}

@app.get("/predict/heartdisease")
def predict_heart_disease(sex: int = 1, age: int = 15, daily_cigs: int = 0, is_on_bp_meds: int = 0, has_stroke_risk: int = 0, has_diabetes: int = 0, cholestrol: int = 100, bp: float = 50, bmi: float = 20, heart_rate: int = 60):
    model = pickle.load(open("./models/Heart.bin", "rb"))
    given_input = np.array([[sex, age, daily_cigs, is_on_bp_meds, has_stroke_risk, has_diabetes, cholestrol, bp, bmi, heart_rate]])
    prediction = model.predict(given_input)
    probability = model.predict_proba(given_input)
    return {"has_heart_disease": bool(prediction[0] == 1), "confidence": float(probability[0][0] * 100)}

if __name__ == "__main__":
    uvicorn.run("app:app", host="0.0.0.0", port=5200, reload=True)