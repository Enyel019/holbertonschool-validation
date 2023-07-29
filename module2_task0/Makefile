BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log

.PHONY: all build run stop clean test help

all: build run ## compile and run the application (default)

build: ## compile the source code to a binary
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .

run: ## run the application
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop: ## stop the running application
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)` || true

clean: ## clean up the binary and log file
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill $(BINARY_NAME) || true
	@rm -rf ./dist/*

test: ## test the application
	@echo "Testing the application..."
	@curl http://localhost:9999 || true
	@curl http://localhost:9999/health || true

help: ## Prints out the list of targets and their usage
	@echo "Available targets:"
	@echo "  all:         compile and run the application (default)"
	@echo "  build:       compile the source code to a binary"
	@echo "  run:         run the application"
	@echo "  stop:        stop the running application"
	@echo "  clean:       clean up the binary and log file"
	@echo "  test:        test the application"
