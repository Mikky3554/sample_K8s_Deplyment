#  base image
FROM adoptopenjdk/openjdk11:ubi as build
USER root
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
COPY ["demok8s-0.0.1-SNAPSHOT.jar",  "/opt/app/"]
RUN $pwd
RUN echo "Just echo while you work"
EXPOSE 8084
CMD ["java", "-jar", "k8s_demo.jar"]
