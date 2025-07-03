FROM tomcat:10.1.42-jdk21

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into Tomcat’s webapps directory as ROOT.war
COPY CalculatorApp.war /usr/local/tomcat/webapps/ROOT.war

