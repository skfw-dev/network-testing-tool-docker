FROM alpine:latest

# Installing a full suite of network testing tools
RUN apk add --no-cache \
    iputils \
    curl \
    wget \
    bind-tools \
    net-tools \
    iproute2 \
    mtr \
    tcpdump \
    nmap

