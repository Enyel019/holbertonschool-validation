# Makefile

# Variables
BINARY_NAME = awesome-api
PKG = github.com/yourusername/awesome-api
COMMIT_HASH = $(shell git rev-parse --short HEAD)
BUILD_TIME = $(shell date -u '+%Y-%m-%d_%H:%M:%S')
GOFLAGS =

# Targets
build:
	go build -o $(BINARY_NAME) -ldflags "-X main.commitHash=$(COMMIT_HASH) -X main.buildTime=$(BUILD_TIME)" $(PKG)

run:
	go run $(GOFLAGS) main.go

stop:
	# Implement stop logic here (if needed)
	echo "Stop is not implemented."

clean:
	rm -f $(BINARY_NAME)
	rm -f coverage-units.out

lint:
	golint ./...

help:
	@echo "Available targets:"
	@echo "  build       Build the binary"
	@echo "  run         Run the application"
	@echo "  stop        Stop the application"
	@echo "  clean       Clean up artifacts"
	@echo "  lint        Run golint"
	@echo "  test        Run unit tests"
	@echo "  unit-tests  Run unit tests with code coverage"

test:
	go test -v ./...

unit-tests:
	go test -v -short -coverprofile=coverage-units.out
	go tool cover -func=coverage-units.out | grep HelloHandler | awk '{print $3}'
