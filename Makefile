
build:
	@GOOS=linux GOARCH=amd64 go build -o bin/app-amd64 ./src
build-arm:
	@GOOS=darwin GOARCH=arm64 go build -o bin/app-arm64 ./src

image-build:
	docker build -t app-amd64 .
image-build-arm:

	docker build -t app-arm64 .
image-run:
	docker run app-amd64
image-run-arm:
	docker run app-arm64