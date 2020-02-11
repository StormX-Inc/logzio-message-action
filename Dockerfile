FROM alpine:3.9.5

RUN apk --no-cache add curl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]