FROM node:18.17.1-alpine

WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 8080

CMD [ "npm", "start" ]