# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy all your HTML, CSS, JS files into Nginx's default public folder
COPY . /usr/share/nginx/html

# Expose port 8080 to the outside world
EXPOSE 8080

# configure nginx to listen on 8080
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
