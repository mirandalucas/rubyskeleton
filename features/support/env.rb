require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end