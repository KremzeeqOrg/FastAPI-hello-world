import os
from fastapi import FastAPI
app = FastAPI()


# code adapted from https://fastapi.tiangolo.com/
@app.get("/")
async def root():
    env = os.getenv("ENV")
    return {"message": f"Hello World- I'm running in {env}"}