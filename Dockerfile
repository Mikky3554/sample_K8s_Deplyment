#  base image
FROM adoptopenjdk/openjdk11:ubi
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
RUN mkdir -p /opt/app/new_directory
# Copy the necessary jar file from Source to Target Folder 
ADD ./target/demok8s-0.0.1-SNAPSHOT.jar /opt/app/
EXPOSE 8080
CMD ["java", "-jar", "/opt/app/japp.jar"]
