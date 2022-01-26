FROM tomcat:9.0.55
MAINTAINER tarik ezznati 
COPY target/petclinic.war /usr/local/tomcat/webapps/ROOT.war

