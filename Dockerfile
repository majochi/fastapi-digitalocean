FROM python:3.9-alpine

LABEL MAINTAINER=jo

RUN pip install --no-cache pipenv==2020.11.15

COPY Pipfile* /
RUN pipenv install --system

COPY main.py /app/main.py

WORKDIR /app
EXPOSE 7777

CMD ["uvicorn", "--host", "0.0.0.0", "--port", "7777", "main:app"]
