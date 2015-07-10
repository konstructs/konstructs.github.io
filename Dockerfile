FROM ubuntu:vivid

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install \
		ruby \
		ruby-dev \
		build-essential \
		zlib1g-dev \
		nodejs
RUN gem install github-pages bundler

RUN adduser --gecos FALSE --disabled-password www

RUN mkdir /www
WORKDIR /www
ADD Gemfile /www/Gemfile
RUN chown www:www . Gemfile
RUN bundle install

USER www
