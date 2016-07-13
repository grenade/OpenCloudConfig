FROM fedora:latest
MAINTAINER Rob Thijssen <rthijssen@gmail.com>

RUN dnf update -y && dnf clean all
RUN dnf install -y git && dnf clean all
