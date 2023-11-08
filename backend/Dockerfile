# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git wget unzip python3 python3-pip zlib1g-dev libbz2-dev liblzma-dev curl sed && \
    rm -rf /var/lib/apt/lists/*

# Install the python libraries
RUN pip3 install pandas hyperspy Pillow

# Clone the specific release of the mapping-service
RUN git clone --branch v1.0.2 --single-branch https://github.com/kit-data-manager/mapping-service.git

# Copy the custom application.properties file into the repository
COPY application.properties /mapping-service/application.properties

# Change the TIMEOUT value in ShellRunnerUtil.java
RUN sed -i 's/public static final int TIMEOUT = 30;/public static final int TIMEOUT = 600;/' /mapping-service/src/main/java/edu/kit/datamanager/mappingservice/util/ShellRunnerUtil.java

# Set the working directory to the mapping-service directory
WORKDIR /mapping-service

# Make the Gradle script executable and build the application
RUN chmod +x ./gradlew && \
    ./gradlew build -x test

# Copy the plugin to the plugins directory
COPY plugins/semAcqPlugin-0.3.0-SNAPSHOT-plain.jar /mapping-service/plugins/

# Create the mappingSchemas directory and copy the contents into it
COPY mappingSchemas/ /mapping-service/mappingSchemas/

# Expose application port
EXPOSE 8095

# Start the mapping service
CMD ["java", "-jar", "build/libs/mapping-service-1.0.2.jar"]