FROM amazonlinux:latest

ENV GOPATH /go
ENV PATH /usr/local/go/bin:/go/bin:$PATH

WORKDIR /usr/src

# go install
RUN yum update -y \
    && yum install -y tar \
    && yum install -y gzip \
    && curl -OL https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf ./go1.13.3.linux-amd64.tar.gz

# git install for go get command
RUN yum install -y git