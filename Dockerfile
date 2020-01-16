FROM alpine:latest
RUN apk add --update --no-cache bash openresolv wireguard-tools
COPY docker-entrypoint.sh .
EXPOSE 51820/udp
ENTRYPOINT ["/docker-entrypoint.sh"]
