FROM node:19-alpine as builder
# Create app directory

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY index.js ./

# Install dependencies
COPY package.json .
RUN npm i

# Exports
EXPOSE 3010

CMD [ "npm", "run", "dev" ]