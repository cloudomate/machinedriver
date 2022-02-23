# docker file build using vscode remote development
FROM golang:1.15

RUN apt-get update && apt-get install -y --no-install-recommends \
                wget \
        && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/rancher/machine/releases/download/v0.15.0-rancher77/rancher-machine-amd64.tar.gz
RUN tar -xvf rancher-machine-amd64.tar.gz
RUN cp rancher-machine /usr/bin/ && rm rancher-machine-amd64.tar.gz
RUN mkdir /root/bin
ENV GOBIN="/root/bin"