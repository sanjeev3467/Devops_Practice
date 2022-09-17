FROM alpine:3
LABEL author=sanjeev
LABEL month=sept
RUN apk update
RUN apk add python3