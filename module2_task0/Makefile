# Makefile for Golang HTTP web server project

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log
.PHONY: all build run stop clean test help
all: build
build:
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .
	@hugo
post:    
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
run:
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &
stop:
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)`
	
clean:
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill awesome-api
	@rm -rf ./dist/*
test:build: ## Compile the source code of the application to a binary name file using tje command go build
	hugo
	go build 

post: ## Creates a new post using env vars POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean: ##  Delete the binary awesome-api and the log file awesome-api.log
	pkill awesome-api
	rm -rf ./dist/*
	rm  -f ./awesome-api ./awesome-api.log

.SILENT:
help: ## Displays helpful information for Makefile commands
	cat Makefile | grep '##' | tr -d '##'
 
run: ## Run the application in background by executing the binary awesome-api, and write logs
	./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the application with the command kill
	pkill awesome-api

test: ## You want to test it to ensure that it behaves as expected.
	curl http://localhost:9999
	curl http://localhost:9999/health
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
