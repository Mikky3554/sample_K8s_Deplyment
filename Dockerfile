#  base image
FROM adoptopenjdk/openjdk11:ubi
USER root
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
RUN mkdir -p /opt/app/new_directory
# Copy the necessary jar file from Source to Target Folder 
COPY ["./target/demok8s-0.0.1-SNAPSHOT.jar",  "/opt/app/k8s_demo"]
EXPOSE 8084
CMD ["java", "-jar", "k8s_demo.jar"]
