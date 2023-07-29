build: ## Build the website using Go-Hugo
	@hugo

clean: ## Clean up the generated files
	@rm -rf dist/*

post: ## new post
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

check:  ## Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

build-and-check: ## Build the website and check for dead links and markdown issues
	@make check
	@make build

validate: ## Validates dist/index.html using W3C Hbtn validator
	@python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html
