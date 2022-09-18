FROM openjdk:11
LABEL author=sanjeev
LABEL month=sept
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar /auto/Devops_Practice
EXPOSE 80
CMD ["java","-jar","spring-petclinic-2.4.2.jar"]