FROM ubuntu:18.04

LABEL maintainer="Anuj Sharma"
RUN apt-get update \
    && apt-get install -y python \ 
    && apt-get install -y python-pip
RUN pip install flask

COPY app.py /opt/
WORKDIR /opt/
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
