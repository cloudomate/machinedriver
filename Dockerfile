# docker file build using vscode remote development
FROM golang:1.15

RUN apt-get update && apt-get install -y --no-install-recommends \
                openssh-client \
                rsync \
                fuse \
                sshfs \
        && rm -rf /var/lib/apt/lists/*

COPY rancher-machine /usr/bin/