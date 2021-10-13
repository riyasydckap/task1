require_relative 'boot'

# require 'rails/all'

# Add this require instead of "rails/all":
require "rails"

# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Rails2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Chennai"
    # config.eager_load_paths << Rails.root.join("extras")
    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '/*', :headers => :any, :methods => :get
      end
    end
    # Allow framing to see output in Repl.it
    config.action_dispatch.default_headers = {
      'Origin' => 'http://127.0.0.1:3000/',
      "Allow-Control-Allow-origin" => '*',
      'X-Frame-Options' => ''
    }
  end
end
