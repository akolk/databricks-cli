# Use an official Python image as the base
FROM python:3.13-slim

# Install the Databricks CLI
RUN pip install databricks-cli

# Set the working directory
WORKDIR /app

# Install any additional dependencies required by the notebook
# RUN pip install <additional-dependencies>

# Entry point
CMD ["databricks", "-h"]
