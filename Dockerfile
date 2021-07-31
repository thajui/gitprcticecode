FROM centos:latest
MAINTAINER thajwnp@gmail.com
RUN yum install -y httpd \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/minecraft-project.zip  /var/www/html/
WORKDIR /var/wwww/html
RUN unzip minecraft-project.zip
RUN cp -rvf minecraft-project/*.
RUN rm -rf minecraft-project minecraft-project.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


