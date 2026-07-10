# Use a lightweight, official Python base image
FROM python:3.12-slim

# Copy the pre-built 'uv' binary into the container from its official image
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Set the working directory inside the container
WORKDIR /app

# Copy only the requirements file first to take advantage of Docker's layer caching
COPY requirements.txt .

# Install dependencies using uv into the container's system environment
# Note: --no-cache keeps the final Docker image size small
RUN uv pip install --system --no-cache -r requirements.txt

# Copy the rest of your local application files into the container
COPY . .

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]