# Usage instructions:
# docker build -t fast-api-server .
# docker run -p 8080:8080 fast-api-server

# Use the latest version of the Ubuntu base image
FROM ubuntu:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY app /app
COPY requirements.txt /app

# Remember to copy the model pkl
COPY model.pkl /app

# Install the dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Install the application dependencies
RUN pip3 install -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Run the application with uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
