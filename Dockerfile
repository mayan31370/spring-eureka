FROM openjdk:8-jre-alpine
ENV SPRING_CONFIG_URL http://localhost:8888/
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dserver.port=8080","-Dspring.cloud.config.uri=${SPRING_CONFIG_URL}","/app.jar"]
ADD target/*.jar app.jar