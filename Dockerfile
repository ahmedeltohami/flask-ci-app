# استخدم صورة Python الرسمية
FROM python:3.10-slim

# حدد مكان العمل داخل الصورة
WORKDIR /app

# انسخ ملفات المشروع
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# شغل التطبيق
CMD ["python", "app.py"]
