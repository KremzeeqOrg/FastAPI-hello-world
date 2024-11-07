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
docker build -t fastapi-app .
docker run -d --name fast-api-container -p 80:80 -e ENV='dev' fastapi-app
```

### Provision Helm chart in Kubernetes

- Helm chart is found under the directory `fastapi-app`.  

#### Provoision Helm chart in dev namespace

`helm install fastapi-helloworld-release-dev fastapi-app/ -n dev --create-namespace -f fastapi-app/env-config/dev-values.yaml`

#### Provoision Helm chart in prod namespace

`helm install fastapi-helloworld-release-prod fastapi-app/ -n prod --create-namespace -f fastapi-app/env-config/prod-values.yaml`