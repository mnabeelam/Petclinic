#FROM openjdk:8
#EXPOSE 8082
#ADD target/petclinic.war petclinic.war

# Use Tomcat version 9.0.65
FROM tomcat:9.0.65-jdk11-openjdk

# Copy the WAR file into the Tomcat webapps directory
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war

# Expose the port that Tomcat will use (8082 by default)
EXPOSE 8090

# The default command to run when starting the container will start Tomcat
CMD ["catalina.sh", "run"
#ENTRYPOINT ["java","-jar","/petclinic.war"]
