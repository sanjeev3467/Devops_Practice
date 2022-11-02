FROM ubuntu
LABEL author="sanjeev"
ENV dire=/temp
WORKDIR ${dire}
EXPOSE 8080
CMD [ "bash" ]