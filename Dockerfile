FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.json /usr/share/nginx/html/

EXPOSE 9000

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
