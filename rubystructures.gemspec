# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubystructures/version'

Gem::Specification.new do |spec|
  spec.name          = "rubystructures"
  spec.version       = RubyStructures::VERSION
  spec.authors       = ["Connor Jacobsen"]
  spec.email         = ["jacobsen.connor@gmail.com"]
  spec.summary       = %q{Simple, useful data structures in ruby.}
  spec.description   = %q{Simple, useful data structures implemented in pure ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
