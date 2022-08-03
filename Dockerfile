FROM alpine:3
LABEL author=sanjeev
LABEL month=aug
RUN apt add python3 -y
EXPOSE 8080
CMD [ "echo","Imgae creation" ]