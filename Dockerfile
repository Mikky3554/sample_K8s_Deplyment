#  base image
FROM adoptopenjdk/openjdk11:ubi AS build
USER root
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
COPY --from=build /var/lib/jenkins/.m2/repository/k8ssampledeployment/demok8s/0.0.1-SNAPSHOT/demok8s-0.0.1-SNAPSHOT.jar  /opt/app/app01.jar
RUN $pwd
RUN echo "Just echo while you work"
EXPOSE 8084
CMD ["java", "-jar", "app01.jar"]
