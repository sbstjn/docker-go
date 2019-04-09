FROM golang:1-alpine

RUN apk add --update jq curl make bash \
  libc6-compat gcc musl-dev libffi-dev openssl-dev git py-pip ca-certificates openssl
RUN pip install awscli

ENV DOCKER_VERSION "18.06.1-ce"
RUN wget -q -P /tmp https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
  && tar -xz -C /tmp -f /tmp/docker-$DOCKER_VERSION.tgz \
  && mv /tmp/docker/docker /usr/bin \
  && rm -rf /tmp/docker /tmp/docker-$DOCKER_VERSION.tgz

RUN wget -q -P /tmp https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 \
  && mv /tmp/test-reporter-latest-linux-amd64 /usr/bin/codeclimate \
  && chmod +x /usr/bin/codeclimate

RUN go get -u github.com/github/hub/...
RUN go get -u github.com/golang/dep/...
RUN go get -u github.com/golangci/golangci-lint/...
RUN go get -u github.com/mattn/goveralls/...
RUN go get -u github.com/onsi/ginkgo/ginkgo
RUN go get -u github.com/onsi/gomega/...
RUN go get -u github.com/swaggo/swag/cmd/swag/...
RUN go get -u golang.org/x/lint/golint/...