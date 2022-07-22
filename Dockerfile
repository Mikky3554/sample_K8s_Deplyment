#  base image
FROM adoptopenjdk/openjdk11:ubi
USER root
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
RUN mkdir -p /opt/app/new_directory
# Copy the necessary jar file from Source to Target Folder 
#COPY ["./target/demok8s-0.0.1-SNAPSHOT.jar",  "/opt/app/"]
ARG JAR_FILE=/var/lib/jenkins/.m2/repository/k8ssampledeployment/demok8s/0.0.1-SNAPSHOT/demok8s-0.0.1-SNAPSHOT.jar
COPY {$JAR_FILE}  /opt/app/
EXPOSE 8083
CMD ["java", "-jar", "/opt/app/demok8s-0.0.1-SNAPSHOT.jar"]
