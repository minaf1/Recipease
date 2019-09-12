FROM maven:3.3.9-jdk-8-alpine as build-env
ENV DATABASE_NAME="recipease"
ENV JDBC_SCHEMA = "recipease"
ENV JDBC_URL = "34.70.51.191"
ENV JDBC_USERNAME = "abc"
ENV JDBC_PASSWORD = "abc"
COPY . .
RUN mvn install
CMD java -jar target/Recipease-0.0.1-SNAPSHOT.jar 
