# # Stage 1: Build the SvelteKit project
# FROM node:20 AS build

# # Set working directory
# WORKDIR /app

# # Copy package files
# COPY package.json package-lock.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the project files
# COPY . .

# # Build the project
# RUN npm run build

# Stage 2: Serve the built files with Nginx
FROM nginx:alpine

# Copy the built files to Nginx's default HTML directory
COPY public /usr/share/nginx/html

# Copy custom Nginx configuration if needed
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]