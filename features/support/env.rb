require 'cucumber/rails'

ActionController::Base.allow_rescue = false

Capybara.default_driver = :rack_test

DatabaseCleaner.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation
