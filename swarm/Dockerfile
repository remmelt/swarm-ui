FROM nginx:1.7

RUN apt-get -yqq update && apt-get -yqq install ca-certificates procps

COPY swarm /
COPY boot.sh /

RUN chmod +x /boot.sh

EXPOSE 4243

CMD ["/boot.sh"]
