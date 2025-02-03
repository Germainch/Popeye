# BUILD PHASE
FROM  maven:3.9.6-eclipse-temurin-21-alpine as BUILDER
WORKDIR /app
COPY . .

# adding the dependencies
RUN mvn dependency:resolve

# building the jar file
RUN mvn package

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Get the jar file from the build environment
COPY --from=BUILDER /app/target/*.jar /app/
# Run the jar file
CMD ["java", "-jar", "worker-jar-with-dependencies.jar"]