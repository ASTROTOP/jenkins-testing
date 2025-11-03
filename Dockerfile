FROM openjdk:17-jdk-slim

WORKDIR /app
copy . .

RUN javac Test.java

CMD [ "java", "Test" ]