build:
	hugo
 clean: ## Clean the dist directory
	rm -rf dist/*
 post: ## Create a new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
