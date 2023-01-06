#base image
FROM node:alpine

#Set the working directory
WORKDIR /usr/app

#Dependencies for the application to run
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Set the default command
CMD ["npm", "start"]