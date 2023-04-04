FROM maven:3.6-openjdk-15-slim
COPY /opt/.m2 ./.m2
COPY . .
RUN mvn package