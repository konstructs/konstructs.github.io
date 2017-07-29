SHELL=/bin/bash
DOCKER ?= docker

all: build run

RELEASE_NUMBER=9
RELEASE_NUMBER_NEXT=10
RELEASE_BUILD_NUMBER=1501
RELEASE_SERVER=0.1.23

build:
	${DOCKER} build -t konstructs_www .

run: build
	${DOCKER} run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www

debug: build
	${DOCKER} run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www \
		bash

version:
	# documentation/roadmap.md
	sed -i '/RR008/s/- Release .*\]/- Release ${RELEASE_NUMBER_NEXT}\]/g' documentation/roadmap.md
	sed -i '/RR008/s/\/Release[^)]*)/\/Release%20${RELEASE_NUMBER_NEXT})/g' documentation/roadmap.md
	sed -i '/RR009/s/- Release .*\]/- Release ${RELEASE_NUMBER_NEXT}\]/g' documentation/roadmap.md
	sed -i '/RR009/s/\/Release[^)]*)/\/Release%20${RELEASE_NUMBER_NEXT})/g' documentation/roadmap.md

clean:
	rm Gemfile.lock
