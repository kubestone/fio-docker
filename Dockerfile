FROM alpine:3.10.1
RUN apk update \
  && apk add --no-cache fio==3.13-r1 ca-certificates wget \
  && update-ca-certificates

COPY run.sh /app/run.sh
COPY jobs /jobs

VOLUME /data
CMD /app/run.sh
