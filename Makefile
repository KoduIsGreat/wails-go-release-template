
ci:
	@echo Installing Wails...
	go install github.com/wailsapp/wails/cmd/wails@latest
	@echo Installing node...
	curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
	sudo apt-get install -y nodejs
package:
	wails build -p
	cp build ${BUILD_ARTIFACTS_FOLDER}