FROM alpine:3
LABEL author=sanjeev
LABEL month=aug
RUN apk add python3
EXPOSE 8080
CMD [ "/bin/sh ]