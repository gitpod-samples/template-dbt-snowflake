FROM gitpod/workspace-python:latest

USER root

RUN apt-get update && \
    apt-get install -y wget git tree ssh nano sudo nmap man tmux curl joe && \
    rm -rf /var/lib/apt/lists/*

USER gitpod

COPY requirements.txt /tmp
RUN cd /tmp && pip install -r requirements.txt

RUN echo 'export DBT_PROFILES_DIR=$GITPOD_REPO_ROOT/profiles/' >> ~/.bashrc
RUN echo 'export DBT_CONNECTOR=SNOWFLAKE' >> ~/.bashrc
