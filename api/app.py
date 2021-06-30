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
def predict_grade(sex: int = 0, age: int = 0, absences: int = 0, failures: int = 0, activities: int = 0, internet: int = 1, midterm1: int = 50, midterm2: int = 50):
    model = pickle.load(open("./models/GPA.bin", "rb"))
    prediction = model.predict(np.array([[sex, age, absences, failures, activities, internet, midterm1, midterm2]]))
    return {"grade": prediction[0]}


if __name__ == "__main__":
    uvicorn.run("app:app", host="0.0.0.0", port=5200, reload=True)