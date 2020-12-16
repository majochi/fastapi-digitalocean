FROM python:3.9-alpine

LABEL MAINTAINER=jo

ARG PORT=7777
ENV PORT $PORT

RUN pip install --no-cache pipenv==2020.11.15

COPY Pipfile* /
RUN pipenv install --system

COPY main.py /app/main.py

WORKDIR /app
EXPOSE $PORT

CMD /usr/local/bin/uvicorn --host 0.0.0.0 --port $PORT main:app
