# sbstjn/go [![Docker Stars](https://img.shields.io/docker/stars/sbstjn/go.svg?maxAge=600)](https://hub.docker.com/r/sbstjn/go/) [![Docker Pulls](https://img.shields.io/docker/pulls/sbstjn/go.svg?maxAge=600)](https://hub.docker.com/r/sbstjn/go/)

> Docker image with useful tools for `Go` projects. Works fine in CircleCI and GitLab CI.

## Components

- `aws-cli/1.16.70 Python/2.7.15 Linux/4.9.125-linuxkit botocore/1.12.60`
- `Code Climate Test Reporter 0.6.3`
- `Docker version 18.06.1-ce, build e68fc7a`
- `go version go1.11.2 linux/amd64`

### Packages

- `github.com/github/hub`
- `github.com/golang/dep`
- `github.com/golangci/golangci-lint/`
- `github.com/mattn/goveralls`
- `github.com/onsi/ginkgo/ginkgo`
- `github.com/onsi/gomega`
- `github.com/swaggo/swag`
- `golang.org/x/lint/golint`

## Usage

### General

```Dockerfile
# Dockerfile

FROM sbstjn/go
```

### CircleCI

```yaml
jobs:
  checkout:
    working_directory: /go/src/github.com/username/package
    docker:
      - image: sbstjn/go
```

## Development

```bash
# Clone repository

$ > git clone git@github.com:sbstjn/docker-go.git
$ > cd docker-go

# Build container

$ > docker build .

# Start bash and test your environment

$ > docker run -it --entrypoint /bin/bash <container-id>
```

## License

Feel free to use the code, it's released using the [MIT license](LICENSE.md).

## Contribution

You are welcome to contribute to this project! 😘

To make sure you have a pleasant experience, please read the [code of conduct](CODE_OF_CONDUCT.md). It outlines core values and beliefs and will make working together a happier experience.
