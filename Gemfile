source 'https://rubygems.org'

gem 'invoicing'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
group :production, :staging do
  gem "pg"
  gem 'rails_12factor'
end

group :development, :test do
  gem "sqlite3"
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'therubyracer'
gem 'execjs'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'jquery-turbolinks'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

 gem 'ransack'  #Search gem in RAILS
 gem 'responders'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
 gem 'jquery-validation-rails'
 gem "jquery-form-validator-rails"
 gem 'autoprefixer-rails'
 gem 'jquery-datatables-rails', '~> 3.3.0'
 gem 'jquery-ui-rails'
 gem 'client_side_validations'
 gem 'prawn' #report generation
 gem 'prawn-table'
 gem 'puma'

 gem 'owlcarousel-rails'
 gem 'bootstrap-sass', '~> 3.2.0'
 group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
   gem 'sdoc', require: false
 end

gem "bcrypt-ruby", :require => "bcrypt"
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
