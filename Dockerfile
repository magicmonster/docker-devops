FROM ubuntu:20.04
RUN apt update
RUN apt-get -y install git
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y install vim
WORKDIR /opt
# terraform 1.0.7
RUN wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip
RUN unzip terraform_1.0.7_linux_amd64.zip -d terraform_1.0.7

WORKDIR /tmp
RUN wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscli-exe-linux-x86_64.zip
RUN ./aws/install

RUN useradd --shell /bin/bash --create-home devops
