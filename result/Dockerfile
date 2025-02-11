FROM node:21-alpine
LABEL authors="germain"

# Create app directory
WORKDIR /app

# Copy dependency definitions
COPY package.json /app

RUN npm install

# Get all the code needed to run the app
COPY . /app

# Expose the port the app runs in
EXPOSE 80

# Serve the app
CMD ["node", "server.js"]
