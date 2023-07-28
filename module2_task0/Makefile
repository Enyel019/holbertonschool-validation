# Makefile for Golang HTTP web server project

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log

.PHONY: all build run stop clean test help lint

lint: ## run static analysis on the source code"
	@echo "Running lint..."
	@golangci-lint run

all: ## compile and run the application (default)"
    lint build

build: ## compile the source code to a binary"
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .
	@hugo

post: ## new post   
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

run: ## run the application"
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop: ## stop the running application"
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)`

clean: ## clean up the binary and log file"
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill awesome-api
	@rm -rf ./dist/*

test: ## test the application"
	@echo "Testing the application..."
	@curl http://localhost:9999 
	@curl http://localhost:9999/health 

help: ## Prints out the list of targets and their usage
	@echo "Available targets:"
	@echo "  all:       compile and run the application (default)"
	@echo "  build:     compile the source code to a binary"
	@echo "  run:       run the application"
	@echo "  stop:      stop the running application"
	@echo "  clean:     clean up the binary and log file"
	@echo "  test:      test the application"
	@echo "  lint:      run static analysis on the source code"
