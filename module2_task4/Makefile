# Makefile for Go-Hugo website testing automation

HUGO := hugo
CONTENT_DIR := ./content/posts
DIST_DIR := ./dist
W3C_VALIDATOR_DIR := /opt/W3C-Validator

.PHONY: build check validate clean help

build: check ## Build the website using Go-Hugo
	@$(HUGO)

clean: ## Clean up the generated files
	@rm -rf $(DIST_DIR)

help: ## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

check: ## Lints and checks for dead links in markdowns using markdownlint-cli and markdown-link-check
	@echo "Running Markdown Lint..."
	@markdownlint $(CONTENT_DIR)/*.md
	@echo "Checking for Dead Links..."
	@markdown-link-check $(CONTENT_DIR)/*.md || exit 1

validate: ## Validates dist/index.html using Holberton’s W3C Validator
	@make build
	@if [ -d "$(W3C_VALIDATOR_DIR)" ]; then \
		$(W3C_VALIDATOR_DIR)/w3c_validator.py $(DIST_DIR)/index.html || true; \
	else \
		echo "Holberton’s W3C Validator not found. Please clone it to $(W3C_VALIDATOR_DIR)"; \
	fi
