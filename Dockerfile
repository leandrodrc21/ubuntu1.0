FROM ubuntu:18.04 
MAINTAINER MERSYS  mersys@mersys.com
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page244/tech-blog.zip
RUN chmod 666 tech-blog.zip
RUN unzip tech-blog.zip
RUN cp -r tech-blog/  /var/www/html
EXPOSE 82
CMD /usr/sbin/apache2ctl -D FOREGROUND
