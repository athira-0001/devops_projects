
FROM adoptopenjdk/openjdk11:alpine-jre

# The artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar


ENTRYPOINT ["java","-jar","app.jar"]
