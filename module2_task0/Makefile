# Makefile for Golang HTTP web server project

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log
.PHONY: all build run stop clean test help
all: build
build:
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .
	@hugo

post: ## Creates a new post using env vars POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean:
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill awesome-api
	@rm -rf ./dist/*

run:
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop:
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)`

test:
	@echo "Testing the application..."
	@curl http://localhost:9999 
	@curl http://localhost:9999/health 

help:
	@echo "Available targets:"
	@echo "  all:         compile and run the application (default)"
	@echo "  build:       compile the source code to a binary"
	@echo "  run:         run the application"
	@echo "  stop:        stop the running application"
	@echo "  clean:       clean up the binary and log file"
	@echo "  test:        test the application"	
