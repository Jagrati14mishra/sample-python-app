# Use an official Python image as base
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

RUN apt-get update && apt-get install -y zlib1g=1:1.2.11.dfsg-2
RUN apt-get update && apt-get upgrade -y libgssapi-krb5-2
RUN apt-get update && apt-get upgrade -y libk5crypto3
RUN apt-get update && apt-get upgrade -y perl-base

