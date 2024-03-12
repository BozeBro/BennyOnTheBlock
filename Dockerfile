FROM nginx:1.14.2

WORKDIR /proxy

COPY nginx.conf nginx.conf
COPY mime.types mime.types
COPY MyBlog MyBlog

EXPOSE 80
EXPOSE 88

# -g daemon off runs nginx in the foreground instead of the background. nginx daemon is turned off
# trust docker daemon
CMD nginx -c ./nginx.conf -p . -g 'daemon off;'
