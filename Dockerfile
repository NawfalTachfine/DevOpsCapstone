FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py .
COPY model_data ./model_data
COPY requirements.txt .

## Step 3:
# Install packages from requirements.txt
RUN pip install -r requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
ENV FLASK_APP=app
CMD ["python", "app.py"]

