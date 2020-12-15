from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def index():
    return {"message": "Hello World!"}


@app.get("/help")
async def help():
    return {"message": "No help available."}


if __name__ == '__main__':
    import uvicorn
    import os

    uvicorn.run("main:app", host="0.0.0.0", port=int(os.environ.get("PORT", 8000)), log_level="info")
