# Golang HTTP Web Server Project

This is a sample project to create an HTTP web server in Golang. It provides targets (make targets) for building, running, stopping, cleaning, and testing the application. There is also a target for creating a new post for the web server.

## Requirements

- Golang must be installed on the system.
- The 'hugo' command-line tool must be installed to generate web server content.

## Available Targets

- `all`: Build and run the application (default).
- `build`: Compile the source code into an executable binary.
- `run`: Run the application in the background.
- `stop`: Stop the running application.
- `clean`: Clean up binary files and log files.
- `test`: Perform basic tests on the application.
- `post`: Create a new post for the web server.
- `lint`:      run static analysis on the source code.
