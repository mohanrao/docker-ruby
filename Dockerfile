FROM ubuntu:latest
MAINTAINER mohana rao <email.to.mohanrao@gmail.com>
RUN apt-get update && apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev git wget
RUN cd /tmp
RUN wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz
RUN tar -xvzf ruby-2.1.5.tar.gz
RUN cd ruby-2.1.5/
CMD ./configure --prefix=/usr/local
CMD make
CMD make install
CMD gem install bundler
