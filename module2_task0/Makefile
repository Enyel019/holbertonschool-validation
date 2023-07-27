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
