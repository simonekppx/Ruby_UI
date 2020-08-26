require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
 
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end



Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :selenium
  #config.app_host = 'http://www.amazon.com'
  config.default_max_wait_time = 10
end


