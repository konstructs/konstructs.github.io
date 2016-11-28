SHELL=/bin/bash

all: build run

RELEASE_NUMBER=9
RELEASE_NUMBER_NEXT=10
RELEASE_BUILD_NUMBER=1501
RELEASE_SERVER=0.1.23


build:
	docker build -t konstructs_www .

run: build
	docker run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www

debug: build
	docker run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www \
		bash

version:

	# _includes/download.html
	sed -i '/RR001/s/\/[0-9]\+\//\/${RELEASE_NUMBER}\//g' _includes/download.html

	# download.md
	sed -i '/RR004/s/\/[0-9]\+\//\/${RELEASE_NUMBER}\//g' download.md
	sed -i '/RR004/s/Release [0-9]\+/Release ${RELEASE_NUMBER}/g' download.md
	sed -i '/RR005/s/\/[0-9]\+\//\/${RELEASE_NUMBER}\//g' download.md
	sed -i '/RR005/s/Release [0-9]\+/Release ${RELEASE_NUMBER}/g' download.md
	sed -i '/RR006/s/\/[0-9]\+\//\/${RELEASE_NUMBER}\//g' download.md
	sed -i '/RR006/s/client_.\+_amd64/client_${RELEASE_NUMBER}-${RELEASE_BUILD_NUMBER}_amd64/g' download.md
	sed -i '/RR006/s/Release [^ ] /Release ${RELEASE_NUMBER} /g' download.md
	sed -i '/RR010/s/\/[0-9]\+\//\/${RELEASE_NUMBER}\//g' download.md
	sed -i '/RR010/s/client-.*\./client-${RELEASE_NUMBER}-${RELEASE_BUILD_NUMBER}.x86_64./g' download.md
	sed -i '/RR010/s/Release [^ ] /Release ${RELEASE_NUMBER} /g' download.md
	sed -i '/RR007/s/\/v[^/]\//\/${RELEASE_SERVER}\//g' download.md
	sed -i '/RR007/s/-server-.*.jar/-server-${RELEASE_SERVER}.jar/g' download.md
	sed -i '/RR007/s/Server .*</Server ${RELEASE_SERVER}</g' download.md
	sed -i '/RR007/s/download\/v[^/]*/download\/v${RELEASE_SERVER}/g' download.md

	# documentation/roadmap.md
	sed -i '/RR008/s/- Release .*\]/- Release ${RELEASE_NUMBER_NEXT}\]/g' documentation/roadmap.md
	sed -i '/RR008/s/\/Release[^)]*)/\/Release%20${RELEASE_NUMBER_NEXT})/g' documentation/roadmap.md
	sed -i '/RR009/s/- Release .*\]/- Release ${RELEASE_NUMBER_NEXT}\]/g' documentation/roadmap.md
	sed -i '/RR009/s/\/Release[^)]*)/\/Release%20${RELEASE_NUMBER_NEXT})/g' documentation/roadmap.md

clean:
	rm Gemfile.lock
