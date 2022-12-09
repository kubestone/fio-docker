FROM alpine

RUN apk add --no-cache fio bash

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "bash" ]
