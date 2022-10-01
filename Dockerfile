# Basic nginx dockerfile starting with Ubuntu 20.04
FROM ubuntu:20.04

LABEL maintainer="hrmuwanika@gmail.com"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
