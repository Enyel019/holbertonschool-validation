# Go-Hugo app

## Prerequisites

* Go-Hugo, GNUMake installed

## Lifecycle

* Clean build directory with:
     `make clean`

* Create one or more posts with:
    `make POST_NAME=your_post_name POST_TITLE=your_post_title post`

* Build site with:
    `make build`

* Access help with:
    `make help`
* Build package with:
    `make package`

## Workflow

* Triggered on: Code push and once a day
* Tests all make targets
* Generates awesome-website.zip package
