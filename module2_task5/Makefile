# Variables
POST_NAME ?= new-post
POST_TITLE ?= "New Post Title"

# Targets
build: check
	@hugo

check:
	@markdownlint ./content/posts/*.md
	@markdown-link-check ./content/posts/*.md

clean:
	@rm -rf dist/*

post:
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

run: build
	@nohup hugo server --bind 0.0.0.0 --baseUrl=http://localhost:9999 &

stop:
	@pkill -f "hugo server"

test: lint validate

lint:
	@make check

validate: build
	@-git clone https://github.com/holbertonschool/W3C-Validator.git
	@-./W3C-Validator/w3c_validator.py ./dist/index.html
	@-rm -rf ./W3C-Validator
