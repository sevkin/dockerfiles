TAG := sevkin/ccls-factory:18.04

all: build extract

# build https://github.com/MaskRay/ccls with clang-10
build:
	docker build -t ${TAG} .

# extract compiled ccls from docker image
extract:
	docker run -v $$PWD:/tmp --rm --entrypoint cp ${TAG} Release/ccls /tmp

# install ccls into local system
install:
	mv ccls /usr/local/bin

clean:
	docker rmi ${TAG}
