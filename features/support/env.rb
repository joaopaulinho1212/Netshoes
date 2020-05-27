require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "cpf_cnpj"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://www.netshoes.com.br"
end    