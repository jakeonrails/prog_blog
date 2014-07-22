source 'https://rubygems.org'

ruby '2.1.2'

gem 'bundler'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Use PostgreSQL as the database for Active Record
gem 'pg'

# Use HAML for HTML templates
gem 'haml', '~> 4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring', group: :development

# Google analytics plugin to easily add the snippet
gem 'google-analytics-rails'

# A simpler way to add forms to our pages
gem 'simple_form'

# User authentication
gem 'devise', github: 'plataformatec/devise'

# OAuth support
gem 'omniauth'
gem 'omniauth-facebook'

# Twitter bootstrap for an easy grid layout
gem 'bootstrap-sass', github: 'twbs/bootstrap-sass'
gem 'bootstrap-sass-extras'

# Use the periodically updated TZ info database for Time Zone information
gem 'tzinfo-data'

# Adds common validations to models, like email, phone, etc...
gem 'validates_formatting_of'

# NewRelic for app performance and exception monitoring
gem 'newrelic_rpm'

# Unicorn instead of the default webrat server
gem 'unicorn'

# Github API
gem 'octokit'

# User friendly URLS (/jakeonrails/my-first-blog-post)
gem 'friendly_id', '~> 5.0.0'

group :production do
  # Used by Heroku to make small tweaks to Rails that Heroku would otherwise
  # inject at deploy-time
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'dotenv-rails'
  gem 'powify'
  gem 'quiet_assets'
end

group :test do
  gem 'shoulda-matchers'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end
