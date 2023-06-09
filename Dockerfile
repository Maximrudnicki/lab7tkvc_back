# Use an official Python runtime as the base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache -r requirements.txt

# Copy the Django project code to the container
COPY . .

# Expose the port on which the Django app will run
EXPOSE 8000

# Set the entrypoint command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]