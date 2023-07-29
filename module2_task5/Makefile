# Variables
POST_NAME ?= new-post
POST_TITLE ?= "New Post Title"

# Targets
build: check ## Build the website using Go-Hugo only if check passes
	@hugo

check: ## Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

clean: ## Clean up the generated files
	@rm -rf dist/*
	@rm -rf dist/*

post: ## new post
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

help: ## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

run: build
	@nohup hugo server --bind 0.0.0.0 --baseUrl=http://localhost:9999 &

stop: ## Stop the application with the command kill
	@pkill -f "hugo server"

test: lint validate ## You want to test it to ensure that it behaves as expected.
	make unit-tests 
	make integration-tests


lint:  ## the linter reads the source code and detect common semantic errors.
	@make check

validate: build ## Validates dist/index.html using W3C Hbtn validator
	@-git clone https://github.com/holbertonschool/W3C-Validator.git
	@-./W3C-Validator/w3c_validator.py ./dist/index.html
	@-rm -rf ./W3C-Validator
