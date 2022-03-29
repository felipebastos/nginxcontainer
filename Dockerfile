FROM nginx:1.21.6-alpine
COPY ./html /usr/share/nginx/html
COPY ./images /usr/share/nginx/images
COPY ./css /usr/share/nginx/css
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/
EXPOSE 8080