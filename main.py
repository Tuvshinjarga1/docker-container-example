from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Item(BaseModel):
    name: str
    value: int

@app.post("/submit")
def receive_json(item: Item):
    return {"message": "Received", "data": item}