FROM node:14-alpine 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm

COPY . .

# Production
RUN npm run start:prod

EXPOSE 4000

# start the app on Production
CMD ["npm","run", "start:prod"]

# start the app on Develop
# CMD ["yarn", "start:dev"]
