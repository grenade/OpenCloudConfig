FROM fedora:24
MAINTAINER Rob Thijssen <rthijssen@gmail.com>

RUN dnf update -y && dnf clean all
RUN dnf install -y \
    git \
    python \
    util-linux \
    java-1.8.0-openjdk \
    unzip \
    && dnf clean all
# aws ec2 cli: http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/set-up-ec2-cli-linux.html#setting_up_ec2_command_linux
RUN curl -O http://s3.amazonaws.com/ec2-downloads/ec2-api-tools.zip \
    && mkdir /usr/local/ec2 \
    && unzip ec2-api-tools.zip -d /usr/local/ec2
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.92-3.b14.fc24.x86_64/jre
ENV EC2_HOME /usr/local/ec2/ec2-api-tools-1.7.5.1
ENV PATH $PATH:/usr/local/ec2/ec2-api-tools-1.7.5.1/bin
