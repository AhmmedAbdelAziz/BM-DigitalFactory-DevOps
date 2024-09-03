# Use OpenJDK 11 as the base image
FROM openjdk:11-jdk-slim as build

# Set the working directory in the container
WORKDIR /app

# Copy the gradle files
COPY build.gradle settings.gradle gradlew ./
COPY gradle gradle

# Copy the source code
COPY src src
RUN chmod +x ./gradlew   
# Build the application
RUN  ./gradlew build

# Use a smaller base image for the runtime
FROM openjdk:11-jre-slim

WORKDIR /app

# Copy the built jar file from the build stage
COPY --from=build /app/build/libs/demo-0.0.1-SNAPSHOT.jar ./app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
