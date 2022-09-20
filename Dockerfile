FROM maven:3-openjdk-8 AS builder
RUN git clone https://github.com/wakaleo/game-of-life.git && cd 'game-of-life' && mvn package

FROM tomcat:9
LABEL author="sanjeev"
COPY --from=builder /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080