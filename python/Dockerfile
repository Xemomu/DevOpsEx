FROM python:3.9-slim-buster

WORKDIR /app
    
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

ENV LOG_LEVEL=INFO

CMD [ "python", "app.py" ]