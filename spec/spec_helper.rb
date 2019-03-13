require "bundler/setup"
require "dotenv"
require "iexcloud"
require "vcr"

Bundler.require(:default, :development)

Dotenv.load(".env.test", ".env")

IEXCloud.configure do |config|
  config.api_version = "beta"
  config.endpoint = "https://sandbox.iexapis.com/"
end

RSpec.configure do |config|
  config.disable_monkey_patching!
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/cassettes"
  c.hook_into :faraday, :webmock
  c.configure_rspec_metadata!

  c.filter_sensitive_data("<SECRET_TOKEN>") {
    ENV.fetch("SECRET_TOKEN", "secret-token")
  }
  c.filter_sensitive_data("<PUBLISHABLE_TOKEN>") {
    ENV.fetch("PUBLISHABLE_TOKEN", "publishable-token")
  }
end
