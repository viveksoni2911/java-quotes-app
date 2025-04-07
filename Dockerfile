# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-alpine

# Set metadata
LABEL maintainer="trainwithshubham@gmail.com"
LABEL version="1.0"
LABEL description="A Java Quotes application"

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

# Compile the Java code
RUN javac Main.java

# Expose port 8000 for the HTTP server
EXPOSE 8000
# just editing 
# Run the Java application when the container starts
CMD ["java", "Main"]
