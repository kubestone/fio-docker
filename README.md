# fio-docker

[![docker build](https://img.shields.io/docker/cloud/build/xridge/fio.svg)](https://hub.docker.com/r/xridge/fio)
[![docker pulls](https://img.shields.io/docker/pulls/xridge/fio.svg)](https://hub.docker.com/r/xridge/fio)
[![license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

fio Docker Image based on Alpine Linux.

## Usage
```bash
$ docker run -v $(pwd)/data:/data -e JOB_FILES=/jobs/rand-rw.fio xridge/fio

$ docker run -e JOB_FILES=/jobs/rand-rw.fio xridge/fio
```

## License
[Apache License Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
