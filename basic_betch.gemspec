# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basic_betch/version'

Gem::Specification.new do |spec|
  spec.name          = "basic_betch"
  spec.version       = "0.0.1"
  spec.authors       = ["Julie Graceffa"]
  spec.email         = ["julie.graceffa@gmail.com"]

  spec.summary       = %q{Check if you're basic}
  spec.description   = %q{Take a quick test to see what level of basic you are.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   << "basic_betch"
  spec.require_paths = "lib/basic_betch.rb"
end

