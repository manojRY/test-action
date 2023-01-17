FROM alpine:3.10
RUN apk add bash curl jq --update docker openrc
RUN rc-update add docker boot
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
