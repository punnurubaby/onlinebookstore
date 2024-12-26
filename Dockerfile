FROM tomcat:10.1-jdk17

# Copy the WAR file to Tomcat's webapps directory
COPY target/onlinebookstore-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/onlinebookstore.war

# Expose the default Tomcat port
EXPOSE 8080
