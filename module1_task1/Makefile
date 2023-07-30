all: build
build:
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .
	@hugo
post:    
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
run:
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &
stop:
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)`
	
clean:
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill awesome-api
	@rm -rf ./dist/*
