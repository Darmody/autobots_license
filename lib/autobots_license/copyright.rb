module AutobotsLicense
  class Copyright
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      headers["X-Powered-By"] = "Autobots"

      [status, headers, response]
    end
  end
end
