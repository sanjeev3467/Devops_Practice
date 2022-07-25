FROM alpine:3
LABEL author=sanjeev
LABEL month=june
RUN apk update
RUN apk add python3