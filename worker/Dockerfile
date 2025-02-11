# BUILD PHASE
FROM  maven:3.9.6-eclipse-temurin-21-alpine as builder
WORKDIR /app
COPY . .

# adding the dependencies
RUN mvn dependency:resolve

# building the jar file
RUN mvn package

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
# Get the jar file from the build environment
COPY --from=builder /app/target/*.jar .
# Run the jar file
CMD ["java", "-jar", "worker-jar-with-dependencies.jar"]