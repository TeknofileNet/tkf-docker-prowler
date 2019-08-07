FROM ubuntu:18.04
LABEL maintainer="teknofile@teknofile.org"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
  curl \
  wget \
  git \
  python-pip \
  python3-pip \
  jq

RUN pip install awscli ansi2html boto3 detect-secrets

RUN mkdir -p /opt/prowler

RUN git clone https://github.com/TeknofileNet/prowler /opt/prowler
