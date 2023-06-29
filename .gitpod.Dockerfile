# Use Gitpod's latest Python image.
FROM gitpod/workspace-python:latest

# Set the path of dbt's profiles file.
ENV DBT_PROFILES_DIR=./profiles/

# Set the dbt connector to Snowflake.
ENV DBT_CONNECTOR=SNOWFLAKE

# Copy requirements file from host into Container.
COPY requirements.txt /tmp

# Install the requirements.
RUN cd /tmp && pip install -r requirements.txt
