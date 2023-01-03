FROM harikrushn96/tomcat9

COPY /var/lib/jenkins/workspace/shell/target/*.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
