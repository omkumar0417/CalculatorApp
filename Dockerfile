FROM tomcat:10.1-jdk17-temurin

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY CalculatorApp.war /usr/local/tomcat/webapps/CalculatorApp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
