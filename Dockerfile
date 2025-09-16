# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy all your HTML, CSS, JS files into Nginx's default public folder
COPY ./web/ /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 8080

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
