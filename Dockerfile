FROM nginx:alpine

EXPOSE 9050

COPY ./torrc /etc/tor/torrc

RUN apk --update --allow-untrusted --repository http://dl-4.alpinelinux.org/alpine/edge/community/ add \
    tor

ENTRYPOINT [ "/usr/bin/tor" ]