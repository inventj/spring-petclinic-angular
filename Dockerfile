FROM node:latest

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install -g @angular/cli@latest

COPY . .

EXPOSE 4200
ENTRYPOINT  [ "ng", "serve", "--host", "0.0.0.0"]
