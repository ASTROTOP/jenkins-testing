FROM openjdk:17-jdk-slim

WORKDIR /app
COPY . .

RUN javac Test.java

CMD [ "java", "Test" ]
