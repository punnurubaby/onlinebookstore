FROM open jdk:11
ADD target/onlinebookstore-0.0.1-SNAPSHOT.war app.war
EXPOSE 8083
ENTRYPOINT ["java","-war","/app.war"]
