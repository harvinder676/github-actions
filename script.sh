#!/bin/bash
set -m
uvicorn main:app  --host 127.0.0.1  --port 8000 --log-level error &
locust --headless --users 10 --spawn-rate 1 -H http://127.0.0.1:8000 -t 5 #Run  test for 5 seconds 