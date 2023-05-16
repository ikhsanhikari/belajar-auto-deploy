# Use the official OpenJDK 8 image as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Run the "clean package" Maven command to build the application
RUN ./mvnw clean package -DskipTests

# Copy the JAR file into the container at /app
COPY target/belajar-auto-deploy-0.0.1-SNAPSHOT.jar /app

# Expose port 9999 for the Spring Boot application
EXPOSE 9999

# Set the command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "belajar-auto-deploy-0.0.1-SNAPSHOT.jar"]
