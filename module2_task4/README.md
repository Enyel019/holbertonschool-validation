## Prerequisites

* Go-Hugo, GNUMake installed

## Lifecycle

* Clean build directory with `make clean`
* Create one or more posts with `make POST_NAME=your_post_name POST_TITLE=your_post_title post`
* Build site with `make build`
* Access help with `make help`
* check: Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
* validate:Validates dist/index.html using W3C Hbtn validator
