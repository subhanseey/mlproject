FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install --default-timeout=600 -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]


