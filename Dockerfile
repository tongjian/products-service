FROM ruby:2.5.1
MAINTAINER docker-library <docker-library@github.com>

RUN apt-get update -y

WORKDIR /app

ADD Gemfile /app/Gemfile
Add Gemfile.lock /app/Gemfile.lock
RUN bundle install --jobs 8

ADD . /app

EXPOSE 8080

CMD ["rackup","-o","0.0.0.0","-p","8080"]
