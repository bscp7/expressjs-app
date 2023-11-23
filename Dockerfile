FROM node:alpine as base

WORKDIR /app

COPY package.json ./

RUN rm -rf node_modules && npm install --frozen-lockfile

EXPOSE 8081

COPY . .

CMD ["node", "./server.js"]
