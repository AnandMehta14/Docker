FROM tomcat

EXPOSE 8080

COPY ./Docker_Project/target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
