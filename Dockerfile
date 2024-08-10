# Use an official Python image as the base
FROM python:3.8-slim

# Install the Databricks CLI
RUN pip install databricks-cli

# Copy the notebook to the container
#COPY MyNotebook.ipynb /app/notebooks/MyNotebook.ipynb

# Set the working directory
WORKDIR /app

# Install any additional dependencies required by the notebook
# RUN pip install <additional-dependencies>

# Entry point
CMD ["databricks", "notebooks", "run", "--notebook-path", "/app/notebooks/MyNotebook.ipynb"]
