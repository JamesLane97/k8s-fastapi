# Use the Python 3.12 base image from Docker Hub
FROM python:3.12

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the contents of the local /app directory into the container's /app directory
COPY /app .

# Install the Python dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8000 to allow external access to the application
EXPOSE 8000

# Command to run the Uvicorn server with the main FastAPI app, listening on all interfaces
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]
