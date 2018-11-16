FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update
RUN apt-get install curl -y


# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install --yes nodejs

# Cleanup
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y

COPY package*.json ./

RUN npm install -g @angular/cli@latest

COPY . .

EXPOSE 4200
ENTRYPOINT  [ "ng", "serve", "--host", "0.0.0.0"]
