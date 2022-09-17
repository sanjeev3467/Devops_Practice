FROM centos:7
LABEL author=sanjeev
LABEL month=sept
RUN yum install httpd -y && yum install php56w php56w-mysql php56w-mcrypt php56w-gd php56w-curl -y && systemctl enable httpd.
EXPOSE 8080
CMD ["sleep","1d"] 