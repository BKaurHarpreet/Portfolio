# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove default nginx files 
RUN rm -f /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html

# Copy all your HTML, CSS, JS files into Nginx's default public folder
COPY ./app/ /usr/share/nginx/html/

# Configure nginx to listen on 8080
RUN sed -i 's/listen\s*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
