FROM ubuntu:20.04
RUN apt update
RUN apt-get -y install git
RUN apt-get -y install wget
RUN apt-get -y install unzip
WORKDIR /opt
# terraform 1.0.7
RUN wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip
RUN unzip terraform_1.0.7_linux_amd64.zip -d terraform_1.0.7

RUN useradd --shell /bin/bash devops
