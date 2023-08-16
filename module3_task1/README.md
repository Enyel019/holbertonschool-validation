# Hugo Website Project

This repository contains a Hugo website project with a Makefile to help manage various tasks.

## Getting Started

To use this project, follow the steps below:

### Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Hugo](https://gohugo.io/getting-started/installing/)
- [GNU Make](https://www.gnu.org/software/make/)

### Setting Up the Project

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/hugo-website.git
   cd hugo-website

## Build Workflow

This project includes a GitHub Actions workflow that automates the build process of the Hugo website.

- Workflow: [.github/workflows/module3_task1.yml](.github/workflows/module3_task1.yml)

- Triggered on:
  - Code push
  - Once a day
- Does stuff

Usage
Once the project is set up, you can use the following commands provided by the Makefile:

- make build: Build the Hugo site.
- make clean: Clean the project.
- make test: Test the build (assuming appropriate rules are in your project's Makefile).
- make deploy: Deploy the project (assuming appropriate rules are in your project's Makefile).
- make version: Display the Hugo version.
