FROM harikrushn96/tomcat9

COPY target/01-maven-web-app.war /opt/tomcat/webapps/01-maven-web-app.war

EXPOSE 8080

CMD ["catalina.sh","run"]
