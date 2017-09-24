source 'https://rubygems.org'

ruby '2.4.0'

gem 'rake'
gem 'hanami',       '1.0.0.beta2'
gem 'jsonapi-hanami'
gem 'rest-client'
gem 'hanami-bootstrap'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
