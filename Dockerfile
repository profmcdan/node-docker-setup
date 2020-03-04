FROM node:12-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm install

EXPOSE 3000

RUN chmod +x ./scripts/start.sh

CMD ./scripts/start.sh