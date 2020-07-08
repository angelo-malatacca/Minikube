FROM tomcat:latest
ADD sample.war /usr/local/tomcat/webapps/
RUN sed -i 's/port="8080"/port="8090"/' /usr/local/tomcat/conf/server.xml
EXPOSE 8090
CMD ["catalina.sh", "run"]