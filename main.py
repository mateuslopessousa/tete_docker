from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/mateus")
async def root():
    return {"message": "Hello World Mateus"}