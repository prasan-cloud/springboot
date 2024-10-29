# Use an OpenJDK base image
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the application jar file
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 7070
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
