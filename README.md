# MLAPI

This is just a playground for me to make an API with various datasets and machine learning algorithms.

## Technology Overview

It utilizes the following technologies:

-   Server
    -   FastAPI
    -   Numpy
    -   Pandas

All code in this repository is constructed using Python. This is built using Docker, so you will need Docker to run it.

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

Download Data

`COMING SOON`

Preprocess Data

```
cd data
python preprocessall.py
```

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
