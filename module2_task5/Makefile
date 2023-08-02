# Build the website using Go-Hugo and Golang
build: check hugo-build go-build
	@true

# Lint and check for dead links on markdowns using markdownlint-cli and markdown-link-check
check:
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

# Delete all the content inside dist directory and stop the application
clean: stop
	@rm -rf dist awesome-api awesome-api.log coverage-units.out coverage-integrations.out

# Create a new post using Hugo
post:
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

# Show the list of targets with their usage
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# Build the website using Go-Hugo and Golang, then start the server
run: build
	hugo server -D --bind 127.0.0.1 --baseURL=http://localhost:9999/posts/welcome/

# Stop the application with the command kill
stop:
	@-pkill -f "hugo server"

# Execute all testing targets
test: lint validate unit-tests integration-tests

# Execute all lint steps
lint: check

# Validate dist/index.html using W3C Hbtn validator
validate: build
	@-git clone https://github.com/holbertonschool/W3C-Validator.git
	@-./W3C-Validator/w3c_validator.py ./dist/index.html
	@-rm -rf ./W3C-Validator

# Build the Hugo website
hugo-build:
	@hugo

# Build the Golang API
go-build:
	@go build -o awesome-api

# Execute unit tests for the Golang API
unit-tests:
	@go test -v ./...

# Execute integration tests for the Golang API
integration-tests:
	@# Run integration tests here (assuming you have integration test files)
