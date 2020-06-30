FROM node:14.4.0-alpine3.11

MAINTAINER Klemens Schueppert "schueppi@schueppi.com"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm ci --only=production

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
