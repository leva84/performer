source "https://rubygems.org"

# Ruby
ruby "3.3.1"

# Rails
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# Gems
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "importmap-rails"
gem "jbuilder"
gem "kredis"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "redis", ">= 4.0.1"
gem 'rubocop', require: false
gem 'slim-rails', '~> 3.1', '>= 3.1.1'
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry'
end

group :development do
  gem 'bullet'
  gem "rack-mini-profiler"
  gem 'spring'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end
