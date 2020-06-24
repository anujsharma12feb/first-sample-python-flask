FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install flask

COPY app.py /opt/
WORKDIR /opt/
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
