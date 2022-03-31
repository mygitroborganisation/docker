 INSTALLING MYSQL

FROM ubuntu --> pulling ubuntu image from dockerhub
MAINTAINER 1010 
EXPOSE 3306 
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server 
USER root 
WORKDIR /usr/lib/myql 
CMD ["bash"] 

           INSTALLING APACHE2

FROM ubuntu
MAINTAINER 2000 
USER root
EXPOSE 80 
RUN apt-get update 
ARG DEBIAN_FRONTEND=noninteractive 
RUN apt-get install -y apache2 
COPY index.html /var/www/html/index.html 
CMD ["apachectl", "-D", "FOREGROUND"]


         INSTALLING HTTPD

FROM centos 
MAINTAINER 2500  
USER root
EXPOSE 80 
RUN yum update 
RUN yum install -y httpd 
COPY index.html /var/www/html/index.html 
WORKDIR /usr/share/httpd 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


        INSTALLING AWSCLI

FROM ubuntu 
MAINTAINER 6000 
USER root
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y  awscli 
RUN apt-get install  -y s3cmd 
ENV AWS_DEFAULT_REGION=ap-south-1 
ENV AWS_ACCESS_KEY_ID=AKIA526NQUJEX4YX6VVK
ENV AWS_SECRET_ACCESS_KEY=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 
CMD ["bash"] 


          INSTALLING POSTGRESQL

FROM ubuntu 
MAINTAINER 4000 
EXPOSE 5432 
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y postgresql postgresql-contrib
WORKDIR /usr/lib/postgreql 
CMD ["bash"] 
