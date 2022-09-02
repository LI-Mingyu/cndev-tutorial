FROM maven:3.8.2-jdk-11 AS build-env
ADD src /app/src
ADD pom.xml /app/
WORKDIR /app
RUN mvn package 
EXPOSE 8080
ENTRYPOINT [ "java" ]
CMD ["-jar", "/app/target/msdemo-2.1.jar"] 