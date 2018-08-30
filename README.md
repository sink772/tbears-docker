# Dockerfile for T-Bears Server

This repository contains Dockerfile for running T-Bears server process in a Docker container.

## Base Docker Image

* ubuntu:18.04

## Build

```
make build
```

or

```
docker build -t tbears-server .
```

## Usage

### Run T-Bears Server

```
make run
```

or

```
docker run -it -p 9000:9000 --rm tbears-server
```

This will start the T-Bears server in the container that is listening on port 9000 for incoming requests.

### Test with T-Bears Client

From another terminal, run the following T-Bears CLI command to see if it could be correctly connected to the T-Bears server.

```bash
(.venv) /work $ tbears totalsupply
Total supply of ICX in hex: 0x2961fff8ca4a62327800000
Total supply of ICX in decimal: 800460000000000000000000000
```

## References

* [T-Bears GitHub Repository](https://github.com/icon-project/t-bears)
