FROM node:alpine

WORKDIR /coin_api

COPY package.json .

COPY yarn.lock .

RUN npm install

COPY server.js .

EXPOSE 4000

CMD [ "node", "server.js" ]