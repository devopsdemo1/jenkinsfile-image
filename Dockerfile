# Use an official ubuntu runtime as a parent image
FROM ubuntu:latest

MAINTAINER vickeyreddy

# Set the working directory to /jenkins
WORKDIR /jenkins

# Copy the current directory contents into the container at /app
ADD . /jenkins

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME ItrainWorld

# Run app.py when the container launches
CMD ["ubuntu", "app.py"]
