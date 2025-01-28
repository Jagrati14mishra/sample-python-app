# Use an official Python image (Debian-based) as the base
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy application files into the container
COPY app.py requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask app
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]



