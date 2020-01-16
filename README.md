# docker-wireguard

docker pull watchdg/wireguard
run

````shell
docker run -d --rm -v /etc/wireguard:/etc/wireguard -p 51820:51820/udp --cap-add NET_ADMIN -t watchdg/wireguard up wg0
````

## create private.key and public.key

### create private.key

````shell
docker run --rm --entrypoint= watchdg/wireguard wg genkey > private.key
````

### create public.key

````shell
docker run -i --rm --entrypoint= watchdg/wireguard wg pubkey < private.key > public.key
````
