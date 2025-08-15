# Use Nginx to serve static HTML
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML code into nginx folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
