FROM node:14-alpine 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm

COPY . .

# Production
RUN npm run start:prod

EXPOSE 4000

