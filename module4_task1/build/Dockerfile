# .build/Dockerfile

# Inherit from the official golang image
FROM golang:1.15.8-buster

# Install additional tools
RUN apt-get update && apt-get install -y \
    # Install golangci-lint (change the version as needed)
    && GO111MODULE=on go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.42.0 \
    # Install Hugo (change the version as needed)
    && wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.88.1/hugo_0.88.1_Linux-64bit.deb \
    && dpkg -i /tmp/hugo.deb \
    && rm /tmp/hugo.deb

# Set working directory
WORKDIR /app
