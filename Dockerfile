# Step 1: Use official Node.js image as the base
FROM node:18

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json first
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the project files
COPY . .

# Step 6: Expose the app’s port (change if your app uses a different port)
EXPOSE 3000

# Step 7: Define the command to start your app
CMD ["npm", "start"]
