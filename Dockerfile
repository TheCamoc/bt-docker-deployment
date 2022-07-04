# syntax=docker/dockerfile:1

FROM python:3.9.13-slim-buster

ENV PYTHONUNBUFFERED 1
ENV GUNICORN_CMD_ARGS="--bind=0.0.0.0"
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app
COPY bt-smarthome-server/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY bt-smarthome-server/smarthome .

RUN python manage.py collectstatic --noinput
COPY bt-smarthome-frontend/dist/bt-smarthome-frontend /frontend

COPY nginx.conf /etc/nginx/nginx.conf
RUN apt update && apt install nginx -y -o Dpkg::Options::=--force-confdef && apt install mosquitto -y -o Dpkg::Options::=--force-confdef

COPY start.sh start.sh
RUN chmod +x start.sh

CMD bash -c "./start.sh"
EXPOSE 80