#! /bin/bash

set -x

cd /tmp/
sed -i "s|HOST|$HOST|g" src/main/resources/application.properties
sed -i "s|DATABASE|$DATABASE|g" src/main/resources/application.properties
sed -i "s|USERNAME|$USERNAME|g" src/main/resources/application.properties
sed -i "s|PASSWORD|$PASSWORD|g" src/main/resources/application.properties
sed -i "s|PORT|$PORT|g" src/main/resources/application.properties
mvn package
mv target/cadastro-0.0.1-SNAPSHOT.jar /data/cadastro-0.0.1-SNAPSHOT.jar
java -jar /data/cadastro-0.0.1-SNAPSHOT.jar
