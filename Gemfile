source 'https://rubygems.org'

gem 'rails', '~> 5.1'
gem 'mysql2'
gem 'redis'
gem 'redis-rails'
gem 'redis-rack-cache', '>= 1.2.4'
gem 'oj'
gem 'oj_mimic_json'
gem 'json'
gem 'twilio-ruby'
gem 'faraday_middleware'
gem 'active_model_serializers'
gem 'okcomputer'
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'active_attr'
gem 'excon'
gem 'rack-cors', '~> 0.4.0.0', require: 'rack/cors' # TODO unlock when we use cors correctly
gem 'attr_encrypted'

group :development do
  gem 'annotate'
  gem 'foreman'
  gem 'rails_layout'
  gem 'puma'
  gem 'traceroute'
  gem 'listen'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'database_cleaner', '>= 1.0.1'
  gem 'email_spec'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'json_spec'
  gem 'oauth2'
  gem 'rails-controller-testing'
  gem 'rake'
  gem 'rspec-rails'
  gem 'rspec-sidekiq'
  gem 'shoulda'
  gem 'timecop'
  gem 'vcr'
  gem 'webmock'
end

group :development, :test, :shared_dev do
  gem 'parallel_tests'
  gem 'pry'
  gem 'pry-byebug'
end
