# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d

# Copy the website's static assets
COPY . /usr/share/nginx/html
