FROM python:3.9

# Thư mục làm việc
WORKDIR /app

# Copy file dependency
COPY requirements.txt .

# Cài thư viện
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Mở port
EXPOSE 5000

# Chạy app
CMD ["python", "app.py"]