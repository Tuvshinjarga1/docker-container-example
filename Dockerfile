# Python суурьтай Docker image ашиглах
FROM python:3.10

# Контейнер дотор ажиллах хавтас үүсгэх
WORKDIR /app

# Шаардлагатай файлуудыг хуулж оруулах
COPY requirements.txt .
COPY main.py .

# Шаардлагатай сангуудыг суулгах
RUN pip install --no-cache-dir -r requirements.txt

# Серверийг ажиллуулах
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]