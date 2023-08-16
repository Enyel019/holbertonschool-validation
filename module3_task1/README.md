## Prerequisites
* Go-Hugo, GNUMake installed

## Lifecycle
* Clean build directory with `make clean`
* Create one or more posts with `make POST_NAME=your_post_name POST_TITLE=your_post_title post`
* Build site with `make build`
* Access help with `make help`

## Build Workflow

This project includes a GitHub Actions workflow that automates the build process of the Hugo website.

* Workflow: [.github/workflows/module3_task1.yml](.github/workflows/module3_task1.yml)

* Triggered on:
  * Code push
  * Once a day
* Does stuff
