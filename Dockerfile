FROM alpine:latest

EXPOSE 9050

COPY ./torrc /etc/tor/torrc
COPY ./run.sh /run.sh

RUN apk --update --allow-untrusted --repository http://dl-4.alpinelinux.org/alpine/edge/community/ add \
    tor

ENTRYPOINT [ "/run.sh" ]
