# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# App binds to port 3000
EXPOSE 3000

CMD ["npm", "start"]
