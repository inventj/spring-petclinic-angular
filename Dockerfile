FROM node:8
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --save-dev @angular/cli@latest
EXPOSE 4200
CMD [ "ng", "serve" ]
