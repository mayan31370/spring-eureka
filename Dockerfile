FROM openjdk:8-jre-alpine
ENV SPRING_PROFILES test
ENV SPRING_CONFIG_URL http://localhost:8888/
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar","-Dserver.port=8080","-Dspring.profiles.active=${SPRING_PROFILES}}"]
ADD target/*.jar app.jar
