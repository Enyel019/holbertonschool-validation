# Makefile

BINARY_NAME := awesome-api

.PHONY: build run stop clean test help

build: ## Compile the source code of the application to a binary named file using the command go build
	go build -o $(BINARY_NAME) .

run: ## Run the application in the background by executing the binary awesome-api and write logs
	./$(BINARY_NAME) >./$(BINARY_NAME).log 2>&1 &

stop: ## Stop the application with the command kill
	-pkill $(BINARY_NAME)

clean: ## Delete the binary awesome-api and the log file awesome-api.log
	make stop
	rm -f $(BINARY_NAME)
	rm -f $(BINARY_NAME).log

test: ## Test the application to ensure that it behaves as expected
	make run
	sleep 1
	@echo "Testing /health endpoint:"
	curl http://localhost:9999/health || true
	@echo "\nTesting / endpoint:"
	curl http://localhost:9999/ || true
	make stop

help: ## Displays helpful information for Makefile commands
	@echo "Available targets:"
	@echo "  build    Compile the source code of the application to a binary named file using the command go build"
	@echo "  run      Run the application in the background by executing the binary awesome-api and write logs"
	@echo "  stop     Stop the application with the command kill"
	@echo "  clean    Delete the binary awesome-api and the log file awesome-api.log"
	@echo "  test     Test the application to ensure that it behaves as expected"
	@echo "  help     Displays helpful information for Makefile commands"
