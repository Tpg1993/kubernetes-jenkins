FROM centos:latest
MAINTAINER gandhitejas55555@gmail.com
RUN yum install -y httpd \
   zip  \
 unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page 247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
