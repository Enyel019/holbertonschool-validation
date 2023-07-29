# Variables
POST_NAME ?= new-post
POST_TITLE ?= "New Post Title"

# Directories
DIST_DIR := ./dist
CONTENT_DIR := ./content/posts

# Targets
build: $(DIST_DIR)/index.html

clean:
	@rm -rf $(DIST_DIR)/*

post:
	@hugo new $(CONTENT_DIR)/$(POST_NAME).md
	@sed -i 's/title: .*/title: $(POST_TITLE)/' $(CONTENT_DIR)/$(POST_NAME).md

# Rules
$(DIST_DIR)/index.html: $(CONTENT_DIR)/*.* ./config.toml
	@hugo
