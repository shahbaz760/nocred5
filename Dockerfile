# Step 1: Use the official Node.js image as the base image
FROM node:16-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if available)
COPY package.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .              make change in production

# Step 6: Expose the port your app will run on (e.g., 3000)
EXPOSE 3000

# Step 7: Set the command to run your app
CMD ["npm", "start"]

