FROM python:3.9-alpine

RUN pip install --no-cache pipenv

COPY Pipfile* /

RUN pipenv install --system

COPY main.py /app/main.py

WORKDIR /app

EXPOSE 7777

CMD ["python", "main.py"]