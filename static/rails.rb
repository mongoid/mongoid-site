if yes?('Would you like to use jQuery instead of Prototype? (yes/no)')
  jquery_flag = true
else
  jquery_flag = false
end

if yes?('Would you like to use the Haml template system? (yes/no)')
  haml_flag = true
else
  haml_flag = false
end

file 'Gemfile', <<-GEMS
source 'http://rubygems.org'
gem "rails",    "3.0.0.rc"
gem "bson_ext", "1.0.4"
gem "mongoid",  "2.0.0.beta.16"
#{'gem "haml",     ">= 3.0"' if haml_flag}

group :test, :development do
  gem "rspec-rails", "~> 2.0.0.beta"
end

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "cucumber-rails"
end
GEMS

# Bundle
run 'bundle install'

# Initialize testing suite
run 'rails g mongoid:config'

if jquery_flag
  # Remove default javascript files and initialize jQuery in application.js
  run "rm public/javascripts/*.js"
  run "curl -L http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js > public/javascripts/jquery.js"
  run "curl -L http://github.com/rails/jquery-ujs/raw/master/src/rails.js > public/javascripts/rails.js"
end

config = <<-CONFIG
    config.generators do |g|
      g.orm             :mongoid
      g.test_framework  :rspec, :fixture => false
    end
CONFIG

inject_into_file 'config/application.rb', "#{config}", :after => "# end\n", :verbose => true

# Remove index.html, application.html.erb and rails.png
run "rm public/index.html"
run "rm public/images/rails.png"
run "rm app/views/layouts/application.html.erb"

# Remove test directory since we're not using test/unit
run "rm -r test"

readme = <<-README
===============================================================================

   Phew! All work done.

   * Your application is configured to use Mongoid, HAML/SASS,
   RSpec, Capybara, and jQuery.

   * Gems are locked. After modifying your Gemfile, run bundle install

   * You can see all the included generators by 'rails generate'.

   * The MongoDB databases are prefixed by your application's name.

   * jQuery 1.4.2 (via google cdn) and its Rails helpers are in public/javascripts.

   * ActiveRecord is not being used. If you want to use it, add the following
     line to application.rb:

     require "active_record/railtie"

   Get coding!

===============================================================================
README

puts readme