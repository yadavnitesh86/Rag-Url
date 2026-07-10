from fastapi import FastAPI
from pydantic import BaseModel  
from rag_url import ask
app = FastAPI()
class syntax(BaseModel):
    url : str
    question : str

@app.post("/ai")
def application_result(model:syntax):
    return {"answer": ask(model.url,model.question)}

@app.get("/health")
async def health_check():
    return {"status": "healthy"}