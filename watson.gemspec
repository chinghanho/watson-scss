# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watson/version'

Gem::Specification.new do |spec|
  spec.name          = "watson-scss"
  spec.version       = Watson::VERSION
  spec.authors       = ["CHH"]
  spec.email         = ["chh@chh.tw"]
  spec.summary       = %q{Utilities for SCSS.}
  spec.description   = %q{Utilities for SCSS.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("sass", [">= 3.2.0.alpha.95"])
  spec.add_dependency("compass", [">= 0.12.0"])

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
