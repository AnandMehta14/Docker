FROM tomcat
EXPOSE 8080
COPY ./Docker-Project/target/java-web-app-1.0.war /usr/local/tomcat/webapps
