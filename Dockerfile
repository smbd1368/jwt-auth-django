# Use the official Python image as the base image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy t    he requirements file into the container
COPY jwt-auth/req.txt /app/

# Install Python dependencies
RUN pip install -r req.txt

# Copy the current directory contents into the container at /app
COPY . /app
#
# # Expose port 8000
EXPOSE 8000
#
# # Command to run the application
CMD ["python", "jwt-auth/manage.py", "runserver", "0.0.0.0:8000"]