FROM node:14-alpine 

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn

COPY . .

# Production
RUN npm run start:prod

EXPOSE 5000

# start the app on Production
CMD ["npm", "start"]

# start the app on Develop
# CMD ["yarn", "start:dev"]
