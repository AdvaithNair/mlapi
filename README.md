# MLAPI

This is just a playground for me to make an API with various datasets and machine learning algorithms.

## Technology Overview

It utilizes the following technologies:

-   Server
    -   FastAPI
    -   Numpy
    -   Pandas

All code in this repository is constructed using Python. This is built using Docker, so you will need Docker to run it.

## Features

### Overview

There are various datasets, models, and features used throughout this API. Since it's a way for me to introduce myself to machine learning, this API has multiple use cases and does not have one story tying it all together.

This project contains:

- Grade Predictor
- Heart Disease Predictor

### Detailed

-   Grade Predictor
    -   Endpoint
        -   `/predict/grade`
    -   Method
        -   Multivariable Linear Regression
    -   Query Parameter Inputs
        -   `sex`
            -   Student's biological sex
            -   int (Female = 1, Male = 0)
        -   `age`
            -   Student's current age
            -   int (0 - 100)
        -   `absences`
            -   Number of absences student has
            -   int (0 - 93)
        -   `failures`
            -   Number of classes a student has failed in the past
            -   int (0 - 4)
        -   `activities`
            -   Whether or not a student participates in extracurricular activities or not
            -   int (Yes = 1, No = 0)
        -   `internet`
            -   Whether or not a student has internet access at home
            -   int (Yes = 1, No = 0)
        -   `midterm1`
            -   Grade the student received on the first midterm
            -   int (0 - 100)
        -   `midterm2`
            -   Grade the student received on the second midterm
            -   int (0 - 100)
    -   Output
        -   `grade`
            -   Predicted grade for the student's final exam
            -   int (0 - 100)
    -   Accuracy
        -   72.94%

-   Heart Disease Predictor
    -   Endpoint
        -   `/predict/heartdisease`
    -   Method
        -   Single Class Logistic Regression
    -   Query Parameter Inputs
        -   `sex`
            -   Patient's biological sex
            -   int (Female = 1, Male = 0)
        -   `age`
            -   Patient's current age
            -   int (0 - 100)
        -   `daily_cigs`
            -   Number of cigarettes patient smokes a day
            -   int (0 - 40)
        -   `is_on_bp_meds`
            -   Whether or not a patient is on blood pressure medication
            -   int (Yes = 1, No = 0)
        -   `has_stroke_risk`
            -   Whether or not a patient is at risk for a stroke
            -   int (Yes = 1, No = 0)
        -   `has_diabetes`
            -   Whether or not a patient has diabetes
            -   int (Yes = 1, No = 0)
        -   `cholestrol`
            -   Patient's standard cholestrol rate
            -   int (100 - 400)
        -   `bp`
            -   Patient's standard blood pressure
            -   float (50 - 120)
        -   `bmi`
            -   Patient's Body Mass Index (BMI)
            -   float (15 - 40)
        -   `heart_rate`
            -   Patient's standard heart rate in BPM
            -   int (50 - 120)
    -   Output
        -   `has_heart_disease`
            -   Prediction if patient has heart disease or not
            -   boolean
        - `confidence`
            -   Probability of prediction being correct
            -   float (0 - 100)
    -   Accuracy
        -   85.38%

## Prerequisites

### Setup

DISCLAIMER: Make sure you're on Python 3.8+

Set Up Virtual Environment

```
cd api
virtualenv -p python3 env
source env/bin/activate
pip install -r requirements.txt
```

### Datasets

Students Dataset

Please download `students.zip` from [this link](https://archive.ics.uci.edu/ml/machine-learning-databases/00320/). Extract the zip file. Copy `student-mat.csv` to `/api/data/GPA/`.

Heart Disease Dataset

Please download `framingham_heard_disease.csv` from [this link](https://www.kaggle.com/naveengowda16/logistic-regression-heart-disease-prediction). Rename the file to `heart-disease.csv` and copy it to `/api/data/Heart`.

## Commands

### API

Open Virtual Environment

```
source env/bin/activate
```

Run API

```
make up
```

Run API Silently (Without Logging)

```
make up-quiet
```

Stop API

```
make down
```

### Server Maintainance

Run the following commands in the server directory

Install New Dependencies

```
source env/bin/activate
pip install [dependency]
make freeze
```

Install All Dependencies

```
pip install -r requirements.txt
```

Deactivate Python Environment (if active)

```
deactivate
```

## Contributors

-   **Advaith Nair**

    -   _Full Stack Developer_
    -   [Website](https://advaithnair.com)
