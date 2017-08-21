
all: build dist

build:
	docker build -t gplscale -f Dockerfile.build .

dist:
	mkdir -p ./build
	docker run -v ${shell realpath ./build}:/build gplscale bash -c "cp /packages/* /build"
	docker run -v ${shell realpath ./build}:/build gplscale bash -c "cp /etc/maxscale.cnf.template /build"

run:
	docker run -ti gplscale bash

.PHONY: all build dist