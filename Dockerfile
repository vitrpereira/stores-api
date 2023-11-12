FROM python:3.11
# EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cahce-dir --upgrade -r requirements.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]