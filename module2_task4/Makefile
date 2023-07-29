build: ## Build the website using Go-Hugo
	@hugo

clean: ## Clean up the generated files
	@rm -rf dist/*

help: ## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

check: ## Lints and checks for dead links in markdowns using markdownlint-cli and markdown-link-check
	@echo "Running Markdown Lint..."
	@markdownlint ./content/posts/*.md
	@echo "Checking for Dead Links..."
	@markdown-link-check ./content/posts/*.md || exit 1

validate: ## Validates dist/index.html using W3C Hbtn validator
	@make build
	@-git clone https://github.com/holbertonschool/W3C-Validator.git
	@-./W3C-Validator/w3c_validator.py ./dist/index.html
	@-rm -rf ./W3C-Validator
