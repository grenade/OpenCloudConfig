FROM fedora:24
MAINTAINER Rob Thijssen <rthijssen@gmail.com>

RUN dnf update -y && dnf clean all
RUN dnf install -y \
    git \
    jq \
    python \
    python-pip \
    unzip \
    && dnf clean all
RUN pip install --upgrade pip && pip install awscli
