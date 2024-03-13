FROM nginx:latest

WORKDIR /etc/nginx


RUN rm -rf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

# -g daemon off runs nginx in the foreground instead of the background. nginx daemon is turned off
# trust docker daemon
CMD nginx -g 'daemon off;'
