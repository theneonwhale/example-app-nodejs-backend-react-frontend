# Use a Node.js image as the base
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Install dependencies for both client and server
RUN npm install

# Build the front-end assets using Webpack
RUN npm run build

# Expose the application port
EXPOSE 3000

# Start the Node.js server
CMD ["npm", "start"]
