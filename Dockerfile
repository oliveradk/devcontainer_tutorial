FROM python:3.11-slim-bookworm

# install system packages
RUN --mount=type=cache,target=/var/cache/apt \     
    apt-get update \ 
    && apt-get install -y git \
    && apt-get install -y gzip

# Copy the requirements file
COPY requirements.txt .

# Mount the pip cache directory as a cache mount
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt
RUN rm requirements.txt
