all: build run

build:
	docker build -t konstructs_www .

run: build
	docker run -ti -v $$PWD:/www -p 4000:4000 konstructs_www \
		bundle exec jekyll serve -w -V --trace
