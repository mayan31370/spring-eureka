FROM openjdk:8-jre-alpine
EXPOSE 8080
ADD target/*.jar app.jar
ENV SPRING_PROFILES test
ENTRYPOINT ["java","-jar","/app.jar","-Dspring.profiles.active=${SPRING_PROFILES}}"]