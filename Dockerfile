FROM maven:3.6-openjdk-15-slim
COPY pom.xml /pom.xml
RUN mvn -Dmaven.repo.local=./.m2 verify clean --fail-never
COPY . .
RUN mvn package