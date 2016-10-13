FROM alpine:latest
USER root
RUN apk --update add openjdk7-jre
COPY target/linesmash-0.0.1-SNAPSHOT.war  /app/bin/
RUN ls -la /app/bin/
ENTRYPOINT java -jar /app/bin/linesmash-0.0.1-SNAPSHOT.war

