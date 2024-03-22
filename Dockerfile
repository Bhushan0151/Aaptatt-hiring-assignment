# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the packaged WAR file into the container
COPY target/sparkjava-hello-world 1.0.war .

# Expose the port your application runs on
EXPOSE 8081

# Command to run your application
CMD ["java", "-jar", "sparkjava-hello-world 1.0.war"]
