FROM alpine:3
LABEL author=sanjeev
LABEL month=aug
RUN apt-get install python3
EXPOSE 8080
CMD [ "echo","Imgae creation" ]