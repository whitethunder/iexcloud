
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iexcloud/version"

Gem::Specification.new do |spec|
  spec.name          = "iexcloud"
  spec.version       = IEXCloud::VERSION
  spec.authors       = ["Matt White"]
  spec.email         = ["mattw922@gmail.com"]

  spec.summary       = %q{Wrapper for the IEX Cloud API. https://iexcloud.io/docs/api}
  spec.homepage      = "https://github.com/whitethunder/iexcloud"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "artisanal-model"
  spec.add_runtime_dependency "dry-configurable", "~> 0.8"
  spec.add_runtime_dependency "dry-types", "~> 0.14"
  spec.add_runtime_dependency "faraday", "~> 0.15"
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.13'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "dotenv", "~> 2.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 4.0"
  spec.add_development_dependency "webmock", "~> 3.5"
end
