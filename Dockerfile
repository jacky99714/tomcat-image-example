FROM java
MAINTAINER jack
RUN apt-get update
RUN apt-get install -y wget

RUN cd /


RUN wget https://downloads.apache.org/tomcat/tomcat-7/v7.0.100/bin/apache-tomcat-7.0.100.tar.gz
RUN tar zxvf apache-tomcat-7.0.100.tar.gz

CMD ["/apache-tomcat-7.0.100/bin/catalina.sh", "run"]

EXPOSE 8080