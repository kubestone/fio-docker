# fio-docker

[![docker build](https://img.shields.io/docker/cloud/build/xridge/fio.svg)](https://hub.docker.com/r/xridge/fio)
[![docker pulls](https://img.shields.io/docker/pulls/xridge/fio.svg)](https://hub.docker.com/r/xridge/fio)
[![license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

fio Docker Image based on Alpine Linux.

## Usage
Run sample fio job file without volume mount (read speed inside docker):
```bash
$ docker run xridge/fio /jobs/rand-read.fio
```

Run sample fio job file with volume mount:
```bash
$ docker run -v $(pwd)/data:/data xridge/fio /jobs/rand-read.fio
```

Run custom fio job file:
```bash
$ docker run -v $(pwd)/data:/data -v /path/to/job.fio:/jobs/job.fio xridge/fio /jobs/job.fio
```

## License
[Apache License Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)
