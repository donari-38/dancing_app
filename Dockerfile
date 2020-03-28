FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /dancing_app
WORKDIR /dancing_app
COPY Gemfile /dancing_app/Gemfile
COPY Gemfile.lock /dancing_app/Gemfile.lock
RUN bundle install
COPY . /dancing_app 