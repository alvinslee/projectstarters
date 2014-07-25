MyRailsApp::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  default_url_options = { :host => 'localhost',
		          :protocol => 'http',
		          :port => '3000' }

  Rails.application.routes.default_url_options = default_url_options
  config.action_mailer.default_url_options = default_url_options
  config.action_controller.default_url_options = default_url_options

  config.action_mailer.delivery_method = :test

  config.action_mailer.raise_delivery_errors = true
  # Set mailer to log with a WARN level (logs warnings, errors, and fatals)
  mail_logger = Logger.new(Rails.root.join('log','development.mail.log'))
  mail_logger.level = Logger::DEBUG
  config.action_mailer.logger = mail_logger

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Expands the lines which load the assets
  config.assets.debug = true
end
