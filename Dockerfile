FROM ubuntu:20.04
RUN apt-get update && apt-get -y upgrade 
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN systemctl enable apache2
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
