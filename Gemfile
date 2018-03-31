# frozen_string_literal: true

# NOTE: this is temporary until Bundler 2.0 changes how github: references work.
git_source(:github) { |repo| "https://github.com/#{repo['/'] ? repo : "#{repo}/#{repo}"}.git" }

ruby '2.4.3'

source 'https://rubygems.org'

gem 'rails', '~> 5.1.5'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'slim'
gem 'tzinfo-data'
gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-session'
end

group :development do
  gem 'better_errors'
  gem 'railroady'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end
