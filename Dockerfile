FROM tomcat

RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY ./todolist-web-servlet-jsp/target/todolist.war /usr/local/tomcat/webapps/ROOT.war
