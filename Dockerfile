FROM nginx

RUN rm -rf /usr/share/nginx/html
COPY source /usr/share/nginx/html

RUN rm -f /etc/nginx/nginx.conf \
    rm -f /etc/nginx/conf.d/default.conf
    
COPY roboshop.conf /etc/nginx/nginx.conf
