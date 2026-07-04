FROM node:16

WORKDIR /usr/src/app

# Step 1: Copy package files out of the src folder
COPY src/package*.json ./

# Step 2: Install dependencies
RUN npm install

# Step 3: Copy the rest of the application files from the src folder
COPY src/ ./

EXPOSE 3000
CMD ["npm", "start"]