FROM centos:8
LABEL author=sanjeev
LABEL month=sept
RUN yum install httpd -y && yum install php php-mysql -y && systemctl enable httpd.service
EXPOSE 80
CMD ["sleep","1d"] 