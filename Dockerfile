# Specify a base image
FROM node:alpine
#due to idealTree error
WORKDIR /app
#install some dependencies
#move file from local to containers
COPY ./package.json ./
RUN npm install
COPY ./ ./
# Default container
CMD ["npm","start"]