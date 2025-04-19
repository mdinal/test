# Start from a base Java image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/test-0.0.1.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
