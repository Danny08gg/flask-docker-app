# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the local requirements file to the container
COPY requirements.txt .

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files from the current directory to /app in the container
COPY . .

# Expose the port your application will run on
EXPOSE 8000

# Define the command to run your application
CMD ["python", "app.py"]
