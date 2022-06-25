install:
	pip install --upgrade pip &&\
		pip install -r requirement.txt

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest hello_test.py

format:
	black -l 79 .

run: #Run the FastAPI server for REST API
	uvicorn main:app  --host 127.0.0.1  --port 8000 --log-level error

load: # Do the load test for addition API.	
	locust --headless --users 10 --spawn-rate 1 -H http://127.0.0.1:8000 -t 10





