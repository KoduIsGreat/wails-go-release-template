
install:
	@echo Installing Wails...
	go install github.com/wailsapp/wails/cmd/wails@latest

package-macos:
	sh macos.sh
build:
	wails build
	cp build ${BUILD_ARTIFACTS_FOLDER}
package:
	wails build -p
	cp build ${BUILD_ARTIFACTS_FOLDER}

