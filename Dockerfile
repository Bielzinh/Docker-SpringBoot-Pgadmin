# Maven build container 

FROM maven:3.5.2-jdk-8-alpine AS maven_build

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn package

#pull base image
RUN ls /tmp

RUN ls /tmp/target

FROM openjdk:8-jdk-alpine

#maintainer 
MAINTAINER dstar55@yahoo.com
#expose port 8080
EXPOSE 8080

#default command
CMD java -jar /data/cadastro-0.0.1-SNAPSHOT.jar

#copy hello world to docker image from builder image

COPY --from=maven_build /tmp/target/cadastro-0.0.1-SNAPSHOT.jar /data/cadastro-0.0.1-SNAPSHOT.jar
