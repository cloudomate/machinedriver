#!/bin/bash

set -e

OS="darwin linux windows"
ARCH="amd64"

echo "Getting build dependencies"
go get . 
#go get -u github.com/golang/lint/golint

echo "Ensuring code quality"
go vet ./...
#golint ./...

for GOOS in $OS; do
    for GOARCH in $ARCH; do
        arch="$GOOS-$GOARCH"
        binary="bin/docker-machine-driver-g42.$arch"
        echo "Building $binary"
        GOOS=$GOOS GOARCH=$GOARCH go build -o $binary
    done
done
