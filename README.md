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
Copyright (c) 2019 [xridge.io](https://xridge.io)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
