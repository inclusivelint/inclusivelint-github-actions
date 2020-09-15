FROM debian:buster

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]