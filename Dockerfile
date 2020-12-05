FROM nginx:1.11-alpine 
COPY sample.html /usr/share/nginx/html 
EXPOSE 8090
CMD ["/bin/sh", "-c", "sed -i 's/listen .*/listen 8090;/g' /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
