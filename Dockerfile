for aws
# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining source code
COPY . .

# Expose backend port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

