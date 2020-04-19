source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'dotenv-rails'

gem 'rails', '~> 5.2.4', '>= 5.2.4.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Working with database/serialization
gem 'pg', '>= 0.18', '< 2.0'
gem 'oj'
gem 'oj_mimic_json'

# Media
gem 'carrierwave'
gem 'mini_magick'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
gem 'wicked'
gem 'simple_form'
gem 'ckeditor'

# Auth
gem 'devise'
gem 'pundit'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', '~> 4.1'
  gem 'faker', '>= 2.0.0'
  gem 'timecop'
  gem 'database_cleaner'
  gem 'fuubar', '>= 2.4.1'
  gem 'awesome_pry'
  gem 'simplecov', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
