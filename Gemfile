source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'


gem 'omniauth'
gem 'omniauth-bnet'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'coveralls', require: false

gem 'font-awesome-rails'
gem 'rails-assets-swagger-ui', '~> 2.2', source: 'https://rails-assets.org'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'codeclimate-test-reporter', require: false
  gem 'rspec-collection_matchers', '~> 1.1'
  gem 'rspec-rails', '~> 3.4'
  gem 'rubocop'

  # Debugging
  gem 'pry', '0.10.0'
  gem 'pry-byebug', '3.2.0'
  gem 'pry-doc', '0.12.0'
  gem 'pry-rails', '0.3.2'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

