FROM ubuntu:18.04
RUN apt-get update && apt-get install -y fio jq wget \
 && apt-get remove -y --purge \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
CMD /app/run.sh
