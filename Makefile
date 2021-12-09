
ci:
	@echo Installing Wails...
	go install github.com/wailsapp/wails/cmd/wails@latest
	@echo Installing node...
	curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
	apt-get install -y nodejs pkg-config

package-macos:
	wails build -f -p
	sh macos.sh
build:
	wails build
	cp build ${BUILD_ARTIFACTS_FOLDER}
package:
	wails build -p
	cp build ${BUILD_ARTIFACTS_FOLDER}

