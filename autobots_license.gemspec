# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autobots_license/version'

Gem::Specification.new do |spec|
  spec.name          = "autobots_license"
  spec.version       = AutobotsLicense::VERSION
  spec.authors       = ["darmody"]
  spec.email         = ["eterlf41@gmail.com"]

  spec.summary       = %q{autobots license}
  spec.description   = %q{instruction that the response is powered by autobots}
  spec.homepage      = "https://github.com/Darmody/autobots_license"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "rack"
end
