source 'https://rubygems.org'
ruby "2.3.1"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'foundation-rails'

gem 'devise'
gem 'simple_form'
gem 'dotenv-rails'
gem 'haml-rails'
#inplace editing
gem 'best_in_place'

#sentiment analysis
gem 'indico'
#searching
gem 'pg_search'



#helping creating charts for sleeplog
gem 'chartkick'
gem 'groupdate'
gem 'active_median'

# sending user reminders
gem 'twilio-ruby'
gem 'sidekiq'
gem 'nokogiri'
# Use delayed job for running background jobs
gem 'delayed_job_active_record'
# Need daemons to start delayed_job
gem 'daemons'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'valid_attribute'
  gem 'shoulda-matchers', require: false
  gem 'faker'
  gem 'coveralls', require: false
  gem 'poltergeist'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :test do
  gem 'webmock'
  gem 'vcr'
end
