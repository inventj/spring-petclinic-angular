FROM node:8
RUN npm install -g @angular/cli@latest
EXPOSE 4200
CMD [ "ng", "serve" ]
