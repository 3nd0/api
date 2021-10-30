FROM golang:latest

# Create hierarchy in container
RUN mkdir /go/src/api

# Directory specification when logging in to the container
WORKDIR /go/src/api

# Migrate host-side files to container working directory
ADD . /go/src/api

# Modules使用(mod init)と不要なpackage削除(tidy)
RUN go mod init main \
  && go mod tidy \
  && go build

CMD ["go", "run", "main.go"]