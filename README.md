# goproxy

supports http, socks4/5 at the same time.

## Install

    go install github.com/junlapong/goproxy@latest

## Usage

    usage: goproxy <listen address>
    
## Example

if you run below command in your local or remote machine

    goproxy :8090
    
then you can set your proxy address `<local or remote ip>:8090` on your browser or others that support socks4/5 or http proxy.

[![](http://idiotsky.top/images3/goproxy.png)](http://idiotsky.top/images3/goproxy.png)

## Docker

```sh
# build
docker build -t docker.io/goproxy:latest .

# run
docker run --rm -ti --name goproxy -p 8088:8090 goproxy :8090
# or
docker run --rm -ti --name goproxy --net host goproxy :8088
```

😄 enjoy
