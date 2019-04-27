# Dockerfile for T-Bears Server

This repository contains Dockerfile for running T-Bears server process in a Docker container.

> **NOTE**: T-bears docker image is now officially provided by its project repository.
> Please see https://github.com/icon-project/t-bears/tree/develop/Docker.

## Base Docker Image

* python:3.7.3-slim-stretch

## Build

```
make build
```

or

```
docker build -t iconloop/tbears .
```

## Usage

### Run T-Bears Server

```
make run
```

or

```
docker run -it -p 9000:9000 --rm iconloop/tbears
```

This will start the T-Bears server in the container that is listening on port 9000 for incoming requests.

### Test with T-Bears Client

From another terminal, run the following T-Bears CLI command to see if it could be correctly connected to the T-Bears server.

```bash
(.venv) /work $ tbears totalsupply
Total supply of ICX in hex: 0x52c3fff19494c464f000000
Total supply of ICX in decimal: 1600920000000000000000000000
```

Note that you don't need to install RabbitMQ package on the host system in this configuration. Just need to install T-bears package for issuing some CLI commands.

## References

* [T-Bears GitHub Repository](https://github.com/icon-project/t-bears)
