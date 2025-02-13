# Use official Node.js image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose the port your app runs on (change if necessary)
EXPOSE 3000

# Command to start the application
CMD ["node", "src/index.js"]
