require 'rspec'
require 'capybara'
require 'cucumber'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'

Capybara.register_driver :firefox do |app|
	Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.configure do |config|
	config.default_driver = :firefox
	config.app_host = 'http://newtours.demoaut.com'
end
