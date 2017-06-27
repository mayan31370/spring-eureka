FROM openjdk:8-jre-alpine
ENV SPRING_CONFIG_URL http://localhost:8888/
ENV SPRING_PROFILE test
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dserver.port=8080","-Dspring.cloud.config.uri=${SPRING_CONFIG_URL}","-Dspring.profiles=${SPRING_PROFILE}","/app.jar"]
ADD target/*.jar app.jar