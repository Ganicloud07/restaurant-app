# Base image
FROM nginx:alpine

# Old default files remove karo
RUN rm -rf /usr/share/nginx/html/*

# Apna project copy karo
COPY . /usr/share/nginx/html

# Port expose
EXPOSE 80

# Nginx run
CMD ["nginx", "-g", "daemon off;"]