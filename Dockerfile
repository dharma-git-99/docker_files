# Start with base image
FROM ubuntu

# Install Apache
RUN apt update && apt install apache2 -y

# Copy custom HTML page (optional)
COPY index.html /var/www/html/

# Start Apache when container starts
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
