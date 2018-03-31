FROM ruby:2.4-alpine

RUN apk update && apk add build-base nodejs postgresql-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs

COPY . .

ARG ASSET_HOST
#RUN bundle exec rake ASSET_HOST=${ASSET_HOST} RAILS_ENV=production assets:precompile
#RUN bundle exec rake RAILS_ENV=production assets:precompile

LABEL maintainer="clevertechru <405112@gmail.com>"

CMD puma -C config/puma.rb