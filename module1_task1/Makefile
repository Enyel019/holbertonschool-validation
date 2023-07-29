build: check ## Build the website using Go-Hugo only if check passes
	@hugo


clean: ## Clean up the generated files
	@rm -rf dist/*

post: ## new post
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
