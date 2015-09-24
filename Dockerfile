FROM gliderlabs/alpine:latest
MAINTAINER Massimiliano Dessi <massimiliano.dessi@gmail.com> (@desmax74)

RUN apk update && apk add curl git mercurial bzr go && rm -rf /var/cache/apk/*

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin