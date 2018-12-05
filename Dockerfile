# Use an official Python runtime as a parent image
FROM python:3.6.5-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# -r Pipfile错了，看下怎么调整
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -p

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["sh", "startapp.sh"]
