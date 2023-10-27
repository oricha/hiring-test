FROM python:3.11-slim-bookworm

# Install build dependencies for psycopg2
RUN apt-get update && \
    apt-get install -y gcc libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory to /app
WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

# Set environment variables
ENV SECRET_KEY c2VjcmV0LWtleS1nb2VzLWhlcmU=
ENV DEBUG True
ENV DATABASE_NAME dbname
ENV DATABASE_USER dbuser
ENV DATABASE_PASSWORD secret
ENV DATABASE_HOST localhost
ENV DATABASE_PORT 5432

# Expose port 8080
EXPOSE 8080

# Use Gunicorn as the entry point
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--access-logfile", "-", "app.wsgi:application"]
