FROM nginx:1.7

COPY default.conf /etc/nginx/conf.d/default.conf
COPY boot.sh /

EXPOSE 80

CMD ["/boot.sh"]
