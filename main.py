from fastapi import FastAPI
from pydantic import BaseModel
 
app = FastAPI()
 
 
class inputs(BaseModel):
    a:int
    b:int
                 
@app.post('/add_data')
def show_data(data: inputs):
    return data.a+data.b