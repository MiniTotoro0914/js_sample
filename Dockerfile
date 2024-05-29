# app/Dockerfile

FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
	tzdata \
#    build-essential \
#    software-properties-common \
    git \
	pip \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Tokyo


COPY ./base/requirements_01.txt ./
RUN pip install --no-cache-dir \
	-r requirements_01.txt

# RUN apt-get update && apt-get install antiword

COPY ./base /workspace/base
# COPY ./*.yaml /workspace/
# COPY ./config.in[i] /workspace/
# COPY ./flask_server /workspace/flask_server
# COPY ./loc /workspace/loc
# COPY ./res /workspace/res
# COPY ./azurelogin /workspace/azurelogin
