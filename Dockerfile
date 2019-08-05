FROM alpine:3.10.1
RUN apk update \
  && apk add --no-cache fio==3.13-r1 ca-certificates wget \
  && update-ca-certificates
WORKDIR /app
COPY . .
CMD /app/run.sh
