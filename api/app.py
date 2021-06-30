from fastapi import FastAPI
import uvicorn
import pickle
import numpy as np
import sklearn

app = FastAPI()

@app.get("/")
async def root():
    return {"Easy": "Money"}

@app.get("/regression")
def predict_grade():
    model = pickle.load(open("./models/GPA.bin", "rb"))
    prediction = model.predict(np.array([[0, 17, 2, 0, 1, 1, 55, 55]]))
    return prediction[0]


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=5200)