# Use Node.js base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy application files
COPY . .

# Install dependencies
RUN npm install && apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Expose the port your app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

# Add a healthcheck instruction
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD curl -f http://localhost:3000/ || exit 1
