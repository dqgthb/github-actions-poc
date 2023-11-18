# Use an official Node runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) into the container
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm ci

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

EXPOSE 8080

# Define the command to run your app using CMD which defines your runtime
CMD [ "node", "index.js" ]
