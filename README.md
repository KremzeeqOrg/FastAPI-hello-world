# Hello World FastAPI project

This is a simple FastAPI application which renders 'Hello World' in the browser.

## Prerequisites

- Python e.g. 3.13

## Setup

Install requirement:

`pip install -r requirements.txt`

## Run the application

### Local run

With a Python virtual environment activated locally, run the following:

```
export ENV=dev
fastapi dev main.py
```

### Run with Docker

```
docker build -t myimage .
docker run -d --name fast-api-container -p 80:80 -e ENV='dev' fastapi-app
```
