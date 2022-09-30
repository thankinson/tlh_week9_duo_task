FROM python:latest

WORKDIR /app

RUN pip install Flask

COPY . /app

EXPOSE 5000

ENTRYPOINT ["python", "app.py"]