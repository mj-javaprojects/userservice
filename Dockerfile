FROM eclipse-temurin:21-jdk-alpine as build
WORKDIR /app
COPY .. .
RUN /app/mvnw clean package -DskipTests

FROM eclipse-temurin:21-jdk-alpine
#ARG DEPENDENCY=/app/target/
COPY --from=build /app/target/*.jar /app/userservice.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "/app/userservice.jar"]