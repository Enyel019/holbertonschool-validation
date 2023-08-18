help: ## Shows available targets and descriptions
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build: ## Generates site
	hugo

clean: ## Cleans `dist` folder and zip app
	rm -rf dist/*
	rmdir dist/
	rm -f awesome-website.zip

post: ## Creates new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

package: ## Implement target package
	zip -r awesome-website.zip ./dist/*

lint: ## Lints markdown files
	markdownlint -f ./*.md

unit-tests: ## Runs unit tests
	@echo "Running unit-tests"

integration-tests: ## Runs integration tests
	@echo "Running integration-tests"

validate: ## Runs validation tests
	@echo "Running validation-tests"
