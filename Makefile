SHELL=/bin/bash

all: build run

RELEASE_NUMBER=6
RELEASE_NUMBER_NEXT=7
RELEASE_BUILD_NUMBER=1158
RELEASE_SERVER=0.1.17


build:
	docker build -t konstructs_www .

run: build
	docker run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www

debug: build
	docker run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www \
		bash

version:

	# _includes/download.html
	sed -i '/RR001/s/-[^-]*-windows/-${RELEASE_NUMBER}-windows/g' _includes/download.html
	sed -i '/RR002/s/-[^-]*-linux/-${RELEASE_NUMBER}-linux/g' _includes/download.html
	sed -i '/RR003/s/_[^_]*-[^_]*_/_${RELEASE_NUMBER}_${RELEASE_BUILD_NUMBER}_/g' _includes/download.html

	# download.md
	sed -i '/RR004/s/-[^-]*-windows/-${RELEASE_NUMBER}-windows/g' download.md
	sed -i '/RR005/s/-[^-]*-linux/-${RELEASE_NUMBER}-linux/g' download.md
	sed -i '/RR006/s/_[^_]*-[^_]*_/_${RELEASE_NUMBER}_${RELEASE_BUILD_NUMBER}_/g' download.md
	sed -i '/RR006/s/Release [^ ] /Release ${RELEASE_NUMBER} /g' download.md
	sed -i '/RR007/s/-v.*.jar/-v${RELEASE_SERVER}.jar/g' download.md
	sed -i '/RR007/s/Server .*</Server ${RELEASE_SERVER}</g' download.md

	# documentation/roadmap.md
	sed -i '/RR008/s/- Release .*\]/- Release ${RELEASE_NUMBER_NEXT}\]/g' documentation/roadmap.md
	sed -i '/RR008/s/\/Release[^)]*)/\/Release%20${RELEASE_NUMBER_NEXT})/g' documentation/roadmap.md
	sed -i '/RR009/s/- Release .*\]/- Release ${RELEASE_NUMBER_NEXT}\]/g' documentation/roadmap.md
	sed -i '/RR009/s/\/Release[^)]*)/\/Release%20${RELEASE_NUMBER_NEXT})/g' documentation/roadmap.md

clean:
	rm Gemfile.lock
