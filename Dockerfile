# FROM centos:latest
#  LABEL Maintainer="suraj@gmail.com"
#  RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
#  RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
#  RUN dnf distro-sync -y
#  # RUN dnf -y install java
#  RUN yum install -y httpd \
#    zip \
#    unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip  /var/www/html/
#  WORKDIR /var/www/html
#  RUN unzip kindle.zip
#  RUN cp -rvf markups-kindle/* .
#  RUN rm -rf __MACOSX markups-kindle kindle.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80 



 FROM centos:latest
 LABEL Maintainer="suraj@gmail.com"
 RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
 RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
 RUN dnf distro-sync -y
 # RUN dnf -y install java
 RUN yum install -y httpd \
   zip \
   unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/* .
 RUN rm -rf loxury loxury.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80 
