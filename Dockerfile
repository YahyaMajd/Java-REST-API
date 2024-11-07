# Step 1: Use Maven image to build the application
FROM maven:3.8.4-openjdk-17 AS build

# Set working directory in the container
WORKDIR /app

# Copy Maven configuration and source code
COPY pom.xml .
COPY src ./src

# Build the Spring Boot application
RUN mvn clean package -DskipTests

# Step 2: Use a lightweight JDK image to run the application
FROM openjdk:17-jdk-slim

# Set working directory for the runtime container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
