from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"status": "ok", "version": "0.1.1"}

@app.get("/health")
def health():
    return {"health": "good"}

