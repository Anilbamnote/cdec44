# Use the official httpd image from Docker Hub
FROM httpd:latest

# Copy custom website content into the default Apache directory
COPY ./index.html/ /usr/local/apache2/htdocs/

# Expose the default Apache HTTP port
EXPOSE 80

# Start the Apache HTTP Server
CMD ["httpd-foreground"]