
# Use official Node.js image as the base image
FROM node:14-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Nuxt.js application
RUN npm run build

# Expose the port that the app will run on
EXPOSE 8000

# Start the Nuxt.js application
CMD ["npm", "run", "dev"]
