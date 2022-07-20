FROM adoptopenjdk/openjdk11:ubi
RUN mkdir /opt/app
COPY demok8s-0.0.1-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "/opt/app/japp.jar"]
