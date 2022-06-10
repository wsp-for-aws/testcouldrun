FROM node:14-alpine 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm

COPY . .

# Production
RUN npm run build

EXPOSE 4000

# start the app on Production
CMD ["npm", "start"]

# start the app on Develop
# CMD ["yarn", "start:dev"]
