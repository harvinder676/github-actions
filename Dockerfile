FROM python:3.8
COPY requirement.txt ./
COPY . /app
WORKDIR /app
RUN make install
RUN make lint
RUN make test
RUN make format