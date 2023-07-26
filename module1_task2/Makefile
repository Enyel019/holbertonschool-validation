# Build the website using Go-Hugo
build: ## Build the website using Go-Hugo
    hugo

# Serve the website locally for testing and development
serve: ## Serve the website locally for testing and development
    hugo server

# Clean up the generated files
clean: ## Clean up the generated files
    rm -rf public

# Show the list of targets and their usage
help: ## Show the list of targets and their usage
    @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
