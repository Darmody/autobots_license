require "rack"
require "autobots_license"

RSpec.describe AutobotsLicense do

  let(:app)     { proc{ [200, {}, ["hello, autobots."]] }}
  let(:stack)   { AutobotsLicense::Copyright.new(app) }
  let(:request) { Rack::MockRequest.new(stack) }

  it "contains header info of autobots" do
    response = request.get("/")

    expect(response.header["X-Powered-By"]).to eq "Autobots"
  end
end
