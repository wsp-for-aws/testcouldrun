FROM node:14-alpine 

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn

COPY . .

# Production
RUN yarn build

EXPOSE 3000

# start the app on Production
CMD ["yarn", "start"]

# start the app on Develop
# CMD ["yarn", "start:dev"]
