# Base image: Python + Node.js (kyunki Promptfoo Node based hai)
FROM python:3.10-slim

# Install Node.js & npm (for Promptfoo)
RUN apt-get update && apt-get install -y nodejs npm curl && \
    npm install -g promptfoo@latest && \
    apt-get clean

# Set working directory
WORKDIR /app

# Copy python requirements first (caching layer)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy logic files
COPY . .

# Permissions for scripts
RUN chmod +x run-tests-free.sh

# Default command
CMD ["./run-tests-free.sh"]
