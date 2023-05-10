FROM node:16.13-alpine

WORKDIR /opt/test

COPY package*.json ./

RUN npm set-script prepare "" && npm ci --production

COPY . .

CMD [ "npm", "start" ]
