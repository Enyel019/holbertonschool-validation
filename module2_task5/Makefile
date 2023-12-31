# Variables
POST_NAME ?= new-post
POST_TITLE ?= "New Post Title"
BINARY_NAME := awesome-api
LOG_FILE := $(BINARY_NAME).log
PID_FILE := $(BINARY_NAME).pid

# Targets
build: check hugo-build go-build ## Build the website using Go-Hugo and Golang
	hugo --destination=./dist
	@go build -o $(BINARY_NAME)


check: ## Lints and checks for dead links on markdowns using markdownlint-cli and markdown-link-check
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

clean: stop ## Delete all the generated files and stop the server
	@-rm -rf dist $(BINARY_NAME) $(LOG_FILE) $(PID_FILE) coverage-units.out coverage-integrations.out


post: ## Create a new post using Hugo
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

help: ## Show the list of targets with their usage
	@echo "Usage: make [target]"
	@echo "Targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


run: lint check ## Build the website using Go-Hugo and Golang, then start the server
	./$(BINARY_NAME) > $(LOG_FILE) 2>&1 & echo $$! > $(PID_FILE)
	hugo server --destination=./dist --bind 127.0.0.1 --baseURL=http://localhost:9999/posts/welcome/

stop: ## Stop the application with the command kill
	@-pkill -f "$(BINARY_NAME)"
	@-pkill -f "hugo server"

test: lint validate unit-tests integration-tests ## Execute all testing targets

lint: ## Execute all lint steps
	golangci-lint run

validate: build ## Validates dist/index.html using W3C Hbtn validator
	@-git clone https://github.com/holbertonschool/W3C-Validator.git
	@-./W3C-Validator/w3c_validator.py ./dist/index.html
	@-rm -rf ./W3C-Validator

hugo-build:
	@hugo

go-build:
	@go build -o awesome-api

unit-tests: ## Execute unit tests for the Golang API
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Execute integration tests for the Golang API
	go test -v -coverprofile=coverage-integrations.out

.PHONY: build check clean post help run stop test lint validate hugo-build go-build unit-tests integration-tests

# New target for copying sayHello.html to layouts/shortcodes directory
copy-sayHello:
	@cp ./sayHello.html ./layouts/shortcodes/sayHello.html
