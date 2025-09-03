FROM python:3.11-slim

RUN mkdir -p /var/flaskapp

WORKDIR /var/flaskapp

COPY . .
    
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
