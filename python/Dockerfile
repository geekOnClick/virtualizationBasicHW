FROM python:3.12-slim

WORKDIR /app

COPY ./requirements.txt /temp/requirements.txt

RUN pip install --upgrade pip; pip install -r /temp/requirements.txt

COPY . /app