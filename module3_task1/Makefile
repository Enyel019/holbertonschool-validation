build: ## Generates site
	hugo

make-help: ## Shows available targets and descriptions
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

make-build:
    make build

make-post: ## Creates new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

make-clean: ## Cleans `dist` folder
	rm -rf dist/*

