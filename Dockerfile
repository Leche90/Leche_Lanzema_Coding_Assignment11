    # Use an official Node.js runtime as a parent image
    FROM node:20
     
    # Set the working directory in the container
    WORKDIR /app
     
    # Copy package.json and package-lock.json
    COPY package*.json ./
     
    # Install dependencies
    RUN npm install
     
    # Copy the rest of the application code
    COPY . .
     
    # Expose port 7775
    EXPOSE 7775
     
    # Start the application
    CMD ["npm", "run", "dev"]