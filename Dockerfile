FROM ubuntu:focal
LABEL author=sanjeev
LABEL month=sept
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt install apache2 -y
EXPOSE 80
ADD start.sh /start.sh
ADD index.html /var/www/html/index.html
ADD https://www.youtube.com/watch?v=k7jMsVQ6fA4 /var/www/html/fun.html
RUN chmod +x /start.sh
CMD ["/bin/bash","-c","/start.sh"]