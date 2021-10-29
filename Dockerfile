FROM golang:latest

# Create hierarchy in container
RUN mkdir /go/src/api

# Directory specification when logging in to the container
WORKDIR /go/src/api

# Migrate host-side files to container working directory
ADD . /go/src/api