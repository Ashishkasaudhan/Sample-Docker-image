# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the static HTML file into the Nginx default content directory
COPY static/index.html /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
