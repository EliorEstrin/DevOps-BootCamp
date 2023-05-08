
FROM python:2.7


# Setting The working directory to /app and copying app.py and requirements files
WORKDIR /app
COPY app.py requirements.txt /app/

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the port and start the application
EXPOSE 5000
CMD ["python", "app.py"]
