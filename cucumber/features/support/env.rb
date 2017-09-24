require 'rubygems'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'
require 'cpf_faker'
require 'site_prism'
require_relative 'page_objects'
World(PageObjects)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://www.ze.delivery'
end

Capybara.default_max_wait_time = 5