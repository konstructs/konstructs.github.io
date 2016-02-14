FROM ubuntu:vivid

ENV DEBIAN_FRONTEND noninteractive
ENV RVM_URL https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer

# Setup install
RUN apt-get -y update \
	&& apt-get -y install build-essential zlib1g-dev nodejs \
		curl libssl-dev

# Setup a user
RUN useradd www
RUN mkdir /www && chown www /www
ENV HOME /www
USER www

# Install RVM
RUN gpg --keyserver hkp://keys.gnupg.net \
	--recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
	&& curl -o /tmp/rvm-installer -L ${RVM_URL} \
	&& curl -o /tmp/rvm-installer.asc -L ${RVM_URL}.asc \
	&& gpg --verify /tmp/rvm-installer.asc \
	&& bash /tmp/rvm-installer stable

# Stops rvm from asking for root, to find out that it do not
# need it ... idiots.
RUN bash -c '. $HOME/.rvm/scripts/rvm && rvm autolibs disable'
RUN bash -c '. $HOME/.rvm/scripts/rvm && rvm install 2.2.4'
RUN bash -c '. $HOME/.rvm/scripts/rvm && gem install bundler'

WORKDIR /www
ADD Gemfile /www/Gemfile
RUN bash -c '. $HOME/.rvm/scripts/rvm && bundle install'

WORKDIR /www/site
CMD bash -c '. $HOME/.rvm/scripts/rvm && bundle exec jekyll serve -w -V --host 0.0.0.0 --trace'
