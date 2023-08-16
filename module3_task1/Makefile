help: ## Shows available targets and descriptions
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
    @echo "Available targets:"
	@echo "  help - Display this help message"
	@echo "  build - Build the Hugo website"

build: ## Generates site
	hugo
