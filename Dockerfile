FROM ubuntu:20.04
RUN apt update
RUN useradd --shell /bin/bash --create-home devops

RUN apt-get -y install git
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y install vim

# terraform
WORKDIR /opt
RUN wget https://releases.hashicorp.com/terraform/1.2.4/terraform_1.2.4_linux_amd64.zip
RUN unzip terraform_1.2.4_linux_amd64.zip -d terraform_1.2.4
RUN echo 'PATH=/opt/terraform_1.2.4:$PATH' >> /home/devops/.profile

# aws cli
WORKDIR /tmp
RUN wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscli-exe-linux-x86_64.zip
RUN ./aws/install
