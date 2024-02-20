FROM node:lts-alpine

WORKDIR /app

RUN npm install -g npm

RUN npm install -g json-server

COPY ./db.json /app

CMD ["json-server", "-p", "80", "-w", "/app/db.json"]
