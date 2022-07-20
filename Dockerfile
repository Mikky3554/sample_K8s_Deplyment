FROM adoptopenjdk/openjdk11:ubi
RUN mkdir /opt/app
COPY  /var/lib/jenkins/.m2/repository/k8ssampledeployment/demok8s/0.0.1-SNAPSHOT/demok8s-0.0.1-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "/opt/app/japp.jar"]
