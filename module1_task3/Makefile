build: ## Build the website using Go-Hugo
	hugo

clean: ## Clean up the generated files
	rm -rf dist/*

post: ## new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md


help: ## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
