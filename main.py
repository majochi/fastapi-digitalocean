from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def index():
    return {"message": "Hello World!"}


@app.get("/help")
async def help():
    return {"message": "No help available."}
