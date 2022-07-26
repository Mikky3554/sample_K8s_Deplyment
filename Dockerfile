#  base image
FROM adoptopenjdk/openjdk11:ubi
USER root
LABEL maintainer="Rahul Roy"
# Set your working directory
WORKDIR /opt/app/
RUN ["cp", "/var", "/opt/app/"]
RUN $pwd
RUN echo "Just echo while you work"
EXPOSE 8084
CMD ["java", "-jar", "app01.jar"]
