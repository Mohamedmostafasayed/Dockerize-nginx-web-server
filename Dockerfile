# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package lists and install Nginx
RUN apt-get update && \
    apt-get install -y nginx
COPY myapp /var/www/html
# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
