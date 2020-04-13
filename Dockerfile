FROM ubuntu:latest

RUN apt-get update -y\
&&  apt-get install openjdk-8-jdk -y

RUN apt install wget -y

RUN mkdir /data

WORKDIR /opt

RUN apt install maven -y

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

CMD mvn package ; mv target/cadastro-0.0.1-SNAPSHOT.jar /data/cadastro-0.0.1-SNAPSHOT.jar ; java -jar /data/cadastro-0.0.1-SNAPSHOT.jar
