FROM python:3.11-slim-bookworm

# Set the working directory to /app
WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

# Set environment variables
ENV SECRET_KEY your-secret-key
ENV DEBUG True
ENV DATABASE_NAME your-db-name
ENV DATABASE_USER ZGJ1c2Vy
ENV DATABASE_PASSWORD ZGJwYXNz
ENV DATABASE_HOST localhost
ENV DATABASE_PORT 5432

# Expose port 8080
EXPOSE 8080

# Use Gunicorn as the entry point
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--access-logfile", "-", "app.wsgi:application"]
