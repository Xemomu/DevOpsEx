FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN mkdir -p /app/archive
RUN apt-get update && apt-get install -y curl
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]
