FROM ubuntu:focal
LABEL author=sanjeev
LABEL month=sept
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt install apache2 -y && service apache2 enable && service apache2 start
EXPOSE 80
CMD ["sleep","1d"] 