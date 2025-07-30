# Use Eclipse Temurin Java 17
FROM eclipse-temurin:17-jdk-alpine

# Create working directory
WORKDIR /app

# Copy built jar into container
COPY target/nubangenerator-0.0.1-SNAPSHOT.jar app.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
