FROM lsiobase/alpine:3.10
LABEL maintainer="teknofile <teknofile@teknofile.org>"

RUN echo "** Installing pkgs ** " && \
  apk add --no-cache \
    git \
    curl \
    wget \
    net-tools \
    zip \
    unzip \
    py2-pip

RUN pip install awscli ansi2html boto3 detect-secrets

RUN mkdir -p /opt/prowler

RUN git clone https://github.com/TeknofileNet/prowler /opt/prowler
