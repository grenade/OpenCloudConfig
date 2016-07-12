FROM fedora:latest
MAINTAINER Rob Thijssen <rthijssen@gmail.com>

RUN dnf -y update && yum clean all
RUN dnf -y install git && yum clean all
