FROM nginxinc/nginx-unprivileged

ENV PORT=8080
ENV GREETING="hi"

COPY ./static /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf.template

EXPOSE ${PORT}

CMD ["/bin/sh",  "-c",  "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]