#  base image
FROM adoptopenjdk/openjdk11:ubi
# Set your working directory
WORKDIR /opt/app/
RUN mkdir -p /opt/app/new_directory
# Copy the necessary jar file from Source to Target Folder 
COPY  /var/lib/jenkins/.m2/repository/k8ssampledeployment/demok8s/0.0.1-SNAPSHOT/demok8s-0.0.1-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "/opt/app/japp.jar"]
