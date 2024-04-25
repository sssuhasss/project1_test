# Step 1: Use the official Node.js 12.22.12 image as the base image
FROM node:12.22.12

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Run the application
CMD ["npm", "start"]
