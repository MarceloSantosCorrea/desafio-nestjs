FROM node:20-slim

RUN apt-get update -y && apt-get install -y openssl

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

USER node

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "npm", "run", "start:dev"]