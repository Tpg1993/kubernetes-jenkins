FROM centos:latest
MAINTAINER gandhitejas5555@gmail.com
RUN yum install -y httpd \
   zip  \
 unzip
ADD  http://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
