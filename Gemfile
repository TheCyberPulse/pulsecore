source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootsnap', '>= 1.4.2', :require => false
gem 'cancancan', '~> 3.0.1'
gem 'daemons', '~> 1.3.1'
gem 'delayed_job_active_record', '~> 4.1.3'
gem 'devise', :github => 'plataformatec/devise'
gem 'figaro', '~> 1.1.1'
gem 'haml-rails', '~> 2.0.1'
gem 'jbuilder', '~> 2.7'
gem 'paper_trail', '~> 10.3.1'
gem 'paranoia', '~> 2.4.2'
gem 'pg', '~> 1.1.4'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'will_paginate-bootstrap', '~> 1.0.2'

group :development, :test do
  gem 'brakeman'
  gem 'byebug'
  gem 'rails_best_practices'
  gem 'rubocop-rails'
end

group :development do
  gem 'capistrano', '~> 3.11.0'
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'simplecov'
  gem 'webdrivers'
end
