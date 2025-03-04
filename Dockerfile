# Use official Nginx image
FROM nginx:latest

# Remove the default Nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Copy custom Nginx configuration (optional)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
