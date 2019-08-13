FROM alpine:3.10.1

RUN apk add --no-cache fio==3.13-r1

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]
