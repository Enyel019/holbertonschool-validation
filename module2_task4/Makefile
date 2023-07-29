# Makefile for Go-Hugo website testing automation

.PHONY: build check validate clean help

build: check ## Build the website using Go-Hugo
	@hugo

clean: ## Clean up the generated files
	@rm -rf dist/*

post: ## Create a new post
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

check: ## Lints and checks for dead links in markdowns using markdownlint-cli and markdown-link-check
	@echo "Running Markdown Lint..."
	@markdownlint ./content/posts/*.md
	@echo "Checking for Dead Links..."
	@markdown-link-check ./content/posts/*.md

validate: ## Validates dist/index.html using Holberton’s W3C Validator
	@make build
	@if [ -d "/opt/W3C-Validator" ]; then \
		/opt/W3C-Validator/w3c_validator.py ./dist/index.html || true; \
	else \
		echo "Holberton’s W3C Validator not found. Please clone it to /opt/W3C-Validator"; \
	fi
