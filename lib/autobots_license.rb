require "autobots_license/version"
require "autobots_license/copyright"

module AutobotsLicense
  if defined? Rails
    class Railtie < Rails::Railtie
      initializer "autobots.configure_rails_initialization" do
        Rails.application.middleware.use Copyright
      end
    end
  end
end
