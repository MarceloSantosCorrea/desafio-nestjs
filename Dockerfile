FROM node:20-slim

RUN apt-get update -y && apt-get install -y openssl

RUN npm install -g @nestjs/cli

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY prisma/schema.prisma ./prisma/
RUN npx prisma generate

COPY . .

RUN npx prisma generate
# RUN npm run build

# RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# WORKDIR /home/node/app

# COPY package*.json ./

# RUN npm install

# USER node

# COPY --chown=node:node . .

EXPOSE 3000

CMD [ "npm", "run", "start:dev"]