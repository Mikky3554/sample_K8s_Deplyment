#  base image
FROM adoptopenjdk/openjdk11:ubi
USER root
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
RUN cd /var/lib/jenkins/.m2/repository/k8ssampledeployment/demok8s/0.0.1-SNAPSHOT/
RUN echo "Just echo while you work"
# Copy the necessary jar file from Source to Target Folder 
COPY ["*.jar",  "/opt/app/k8s_demo"]
EXPOSE 8084
CMD ["java", "-jar", "k8s_demo.jar"]
