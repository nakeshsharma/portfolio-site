# Use a lightweight Java runtime as the base image
FROM eclipse-temurin:21-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/personalportfolio-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app uses (change if needed)
EXPOSE 9090

# Run the JAR file when starting the container
ENTRYPOINT ["java", "-jar", "app.jar"]
