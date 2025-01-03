# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY ./project/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY ./project ./

# Expose the port that your app will run on
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
