FROM tomcat:10-jdk17-temurin
RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps.empty && \
	mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
