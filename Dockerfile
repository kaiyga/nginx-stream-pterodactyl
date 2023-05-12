FROM alpine:latest

RUN apk --update --no-cache add ca-certificates nginx 
RUN apk --no-cache add git nginx-mod-stream

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

RUN chmod +x /var/lib/nginx /var/run /var/log/nginx

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]
