# Makefile for Golang HTTP web server project

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log

.PHONY: all build run stop clean test help lint

lint: ## Runs static analysis on the source code using golangci-lint.
	@echo "Running lint..."
	@golangci-lint run

all: lint build ## This is the default target that depends on the build target. It compiles the source

build: ## Compiles the source code into an executable binary named awesome-api.
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .
	@hugo

post: ## Creates a new post for the web server using Hugo. Provide the POST_NAME and POST_TITLE variables to specify the post's name and title, respectively.
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

run: ## Runs the compiled application in the background, redirecting the output to the awesome-api.log file.
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &

stop: ##  Stops the running application by killing the process using the pgrep and kill commands.
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)`

clean: ## Cleans up binary files, log files, and kills any running instances of the awesome-api process.
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill awesome-api
	@rm -rf ./dist/*

test: ## Performs basic tests on the application by sending HTTP requests
	@echo "Testing the application..."
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ## Prints out the list of targets and their usage.
	@echo "Available targets:"
	@echo "  all:       compile and run the application (default)"
	@echo "  build:     compile the source code to a binary"
	@echo "  run:       run the application"
	@echo "  stop:      stop the running application"
	@echo "  clean:     clean up the binary and log file"
	@echo "  test:      test the application"
	@echo "  lint:      run static analysis on the source code"
