FROM python:3.7-alpine
MAINTAINER Sumaiya Azad

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app


# -D says the user can only run the appliation
#RUN adduser user
#USER user