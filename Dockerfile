FROM alpine:latest

WORKDIR /app

COPY . /app

RUN chmod +x test.sh