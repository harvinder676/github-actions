install:
	pip install --upgrade pip &&\
		pip install -r requirement.txt

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest hello_test.py



