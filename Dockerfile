FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.json /usr/share/nginx/html/

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
