require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module HelloRailsBackEnd
  class Application < Rails::Application
    config.load_defaults 7.1

    config.autoload_lib(ignore: %w(assets tasks))
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
      end
    end
  end
end
