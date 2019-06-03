FROM openjdk:8-jre-alpine
MAINTAINER  Cesar Alcancio <cesar.alcancio@gmail.com>

ENV name Cesar Alcancio

COPY ./target/cdcreact-1.0.0-SNAPSHOT.jar /cdcreact.jar
COPY ./custom_script.sh /custom_script.sh
RUN chmod +x /custom_script.sh

CMD ["/custom_script.sh"]
ENTRYPOINT ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/cdcreact.jar"]