require "bundler/setup"
require "dotenv"
require "iexcloud"
require "vcr"

Dotenv.load(".env.test", ".env")

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
end
