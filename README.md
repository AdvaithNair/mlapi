# MLAPI

This is just a playground for me to make an API with various datasets and machine learning algorithms.

## Technology Overview

It utilizes the following technologies:

-   Server
    -   FastAPI
    -   Numpy
    -   Pandas

All code in this repository is constructed using Python. This is built using Docker, so you will need Docker to run it.

### Feature Overview

There are various datasets, models, and features used throughout this API. Since it's a way for me to introduce myself to machine learning, this API has multiple use cases and does not have one story tying it all together.

-   Grade Predictor
    -   Endpoint: `/predict/grade`
    -   Method
        -   Multivariable Linear Regression
    -   Inputs
        -   Sex (F = 1, M = 0)
        -   Age (0 - 100)
        -   Absences (0 - 93)
        -   Failures (0 - 4)
        -   Extracurricular Activites (Y = 1, N = 0)
        -   Internet Access (Y = 1, N = 0)
        -   Midterm 1 Grade (0 - 100)
        -   Midterm 2 Grade (0 - 100)
    -   Output
        -   Final Grade (0 - 100)
    -   Accuracy
        -   72.94%

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

Please download `students.zip` from [this link](https://archive.ics.uci.edu/ml/machine-learning-databases/00320/). Extract the zip file. Copy `student-mat.csv` and `student-por.csv` to `/api/data/GPA/`.

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
pip freeze > requirements.txt
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
