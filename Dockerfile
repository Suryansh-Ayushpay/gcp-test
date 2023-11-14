FROM node:18.17.1-alpine

WORKDIR /usr/app

COPY . .

RUN npm ci --only=production

RUN npm run build

CMD [ "npm", "start" ]