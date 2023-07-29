build:
	hugo || echo "Hugo build failed"
clean: ## Clean the dist directory
	rm -rf dist
post: ## Create a new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md || echo "Title replacement failed"
