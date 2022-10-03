FROM ubuntu:20.04
RUN apt update && apt upgrade -y
RUN apt install –y apache2 
RUN apt install –y apache2-utils && systemctl enable apache2
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
