FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /www
WORKDIR /www
ADD Gemfile /www/Gemfile
ADD Gemfile.lock /www/Gemfile.lock
RUN bundle install
ADD . /www
