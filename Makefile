
all: build dist

build:
	docker build -f Dockerfile.build .

dist:
	mkdir -p ./build
	docker run -v ${shell realpath ./build}:/build -ti 16d0 bash -c "cp /packages/* /build"

.PHONY: all build dist