FROM node:slim

LABEL mantainer="Eloy Lopez <elswork@gmail.com>"

RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    apt-get clean && \
    npm install -g polymer-cli --unsafe-perm 

EXPOSE 8081

RUN mkdir -p app

VOLUME /root/app

WORKDIR /root/app

CMD bash