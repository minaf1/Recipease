FROM maven:3.3.9-jdk-8-alpine as build-env
COPY . .
CMD ["java", "mvnw"]
