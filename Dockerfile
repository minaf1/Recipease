FROM maven:3.3.9-jdk-8-alpine as build-env

ARG DATABASE_NAME
ENV DATABASE_NAME=${DATABASE_NAME}

ARG JDBC_SCHEMA
ENV JDBC_SCHEMA=${JDBC_SCHEMA}

ARG JDBC_URL
ENV JDBC_URL=${JDBC_URL}

ARG JDBC_USERNAME
ENV JDBC_USERNAME=${JDBC_USERNAME}

ARG JDBC_PASSWORD
ENV JDBC_PASSWORD=${JDBC_PASSWORD}

COPY . .
RUN mvn install
CMD java -jar target/Recipease-0.0.1-SNAPSHOT.jar 
