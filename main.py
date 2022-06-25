from fastapi import FastAPI
from pydantic import BaseModel
from hello import add
 
app = FastAPI()
 
 
class inputs(BaseModel):
    a:int
    b:int
                 
@app.post('/add_data')
def show_data(data: inputs):
    return add(data.a,data.b)