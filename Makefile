all: build run

build:
	docker build -t konstructs_www .

run: build
	docker run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www

debug: build
	docker run -ti -v $$PWD:/www/site -p 4000:4000 konstructs_www \
		bash

clean:
	rm Gemfile.lock
