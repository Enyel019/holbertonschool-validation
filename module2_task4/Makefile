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

check:  ## Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
	@echo "Running Markdown Lint..."
	@markdownlint ./content/posts/*.md
	@echo "Checking for Dead Links..."
	@markdown-link-check ./content/posts/*.md

validate: ## Validates dist/index.html using W3C Hbtn validator
	@make build
	@-git clone https://github.com/holbertonschool/W3C-Validator.git
	@-./W3C-Validator/w3c_validator.py ./dist/index.html
	@-rm -rf ./W3C-Validator
