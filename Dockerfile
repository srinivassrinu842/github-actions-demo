# Use the official NGINX image as the base
FROM nginx:stable-alpine

# Copy the custom index.html file into the default NGINX web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (default NGINX port)
EXPOSE 80

# The base image already has the command to start NGINX, so no CMD is strictly needed here
# (The default CMD is ["nginx", "-g", "daemon off;"])
