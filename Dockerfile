# Use Nginx to serve static HTML
FROM httpd:latest

# Remove default nginx website

# Copy your HTML code into nginx folder
COPY . /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
