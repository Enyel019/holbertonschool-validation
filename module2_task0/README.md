## Requirements

- Go 1.16 or later
- Gorilla Mux library (install with go get github.com/gorilla/mux)

## Available Targets

- `make all`: Build and run the application (default).
- `make build`: Compile the source code into an executable binary.
- `make run`: Run the application in the background.
- `make stop`: Stop the running application.
- `make clean`: Clean up binary files and log files.
- `make test`: Perform basic tests on the application.
- `make post`: Create a new post for the web server.
- `make lint`: Run static analysis on the source code.
