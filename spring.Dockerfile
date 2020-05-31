FROM ubuntu:latest

RUN apt-get update -y\
&&  apt-get install openjdk-8-jdk -y

RUN apt install wget -y

RUN mkdir /data

WORKDIR /opt

RUN apt install maven -y

COPY pom.xml /tmp/

COPY src /tmp/src/

COPY docker/cmd.sh /

WORKDIR /

RUN chmod +x cmd.sh

CMD ./cmd.sh
