# Use a base image with Python installed
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file from your local directory into the container
COPY requirements.txt .

# Install the Python dependencies listed in requirements.txt
RUN pip freeze > requirements.txt

# Copy the rest of your application code into the container
COPY . .

EXPOSE 8000

# Command to run when the container starts
CMD ["streamlit", "run", "app.py"]
