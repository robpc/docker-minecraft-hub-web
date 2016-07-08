FROM nginx

COPY nginx.template /etc/nginx/conf.d/nginx.template
COPY static /usr/share/nginx/html

CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/nginx.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"