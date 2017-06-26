FROM openjdk:8-jre-alpine
ENV SPRING_CONFIG_URL http://localhost:8888/
ENV EUREKA_SERVER_URL http://localhost:8761/eureka/
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar","-Dserver.port=8080"]
ADD target/*.jar app.jar