FROM openjdk:8
COPY ./SOAP-WebService-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java", "-cp", "SOAP-WebService-1.0-SNAPSHOT.jar", "it.sapienza.softeng.soapws.Server"]