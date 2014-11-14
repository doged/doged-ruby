# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogecoindark_client/version'

Gem::Specification.new do |spec|
  spec.name          = "dogecoindark_client"
  spec.version       = DogecoinDarkClient::VERSION
  spec.authors       = ["sunerok"]
  spec.email         = ["sunerok@goldmin.es"]
  spec.description   = %q{A DogecoinDark client for ruby. This gem is a ruby wrapper for making remote procedure calls (rpc) to a dogecoindark daemon (dogecoindarkd.)}
  spec.summary       = %q{DogecoinDarkClient is a gem that makes it easy to work with dogecoindark in ruby.}
  spec.homepage      = "http://www.dogecoindark.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
end
