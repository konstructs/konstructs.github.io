FROM ubuntu:vivid

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install \
		ruby \
		ruby-dev \
		build-essential \
		zlib1g-dev \
		nodejs
RUN gem install --no-document bundler

RUN mkdir /www
WORKDIR /www
ADD Gemfile /www/Gemfile
RUN bundle install

RUN adduser --gecos FALSE --disabled-password www
RUN chown www:www . Gemfile
USER www
