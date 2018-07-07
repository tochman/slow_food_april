require 'cucumber/rails'
ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Chromedriver.set_version('2.36')

Capybara.register_driver(:selenium) do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      args: %w( headless no-sandbox disable-popup-blocking disable-infobars  )
  )

  # Possible options to use
  # headless 
  # auto-open-devtools-for-tabs

  client = Selenium::WebDriver::Remote::Http::Default.new
  client.open_timeout = 100000
  client.read_timeout = 100000

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, http_client: client)
end

Cucumber::Rails::Database.javascript_strategy = :truncation
Capybara.javascript_driver = :selenium


