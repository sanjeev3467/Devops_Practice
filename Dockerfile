FROM openjdk:11
LABEL author="sanjeev"
ARG SRC_FILE="https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar"
ARG DST_FILE="/spring-petclinic-2.4.2.jar"
ENV Testing=Fun
ADD ${SRC_FILE} ${DST_FILE}
RUN echo : "ENV: ${DST_FILE}, ARG ${SRC_FILE}"
CMD ["java","-jar","${DST_FILE}"]