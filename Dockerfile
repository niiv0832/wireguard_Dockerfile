FROM alpine:latest
RUN apk add --update --no-cache bash openresolv wireguard-tools
COPY docker-entrypoint.sh .
ENTRYPOINT ["/docker-entrypoint.sh"]
