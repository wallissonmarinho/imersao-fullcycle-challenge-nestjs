FROM node:14-alpine3.14
RUN npm install -g @nestjs/cli@8.0.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "run", "start:dev" ]