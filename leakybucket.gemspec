# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'leakybucket/version'

Gem::Specification.new do |spec|
  spec.name          = "leakybucket"
  spec.version       = Leakybucket::VERSION
  spec.authors       = ["Lukas Elmer"]
  spec.email         = ["lukas.elmer@gmail.com"]
  spec.description   = %q{Leaky bucket API.}
  spec.summary       = %q{Provides an API to manage leaky buckets.}
  spec.homepage      = "https://github.com/lukaselmer/leakybucket"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "coveralls"
end
