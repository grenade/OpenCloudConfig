FROM fedora:24
MAINTAINER Rob Thijssen <rthijssen@gmail.com>

RUN dnf update -y && dnf clean all
RUN dnf install -y \
    git \
    gnupg2 \
    jq \
    pwgen \
    python \
    python-pip \
    unzip \
    && dnf clean all
RUN pip install --upgrade pip && pip install awscli
