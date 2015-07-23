# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elastic_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "elastic_helper"
  spec.version       = ElasticHelper::VERSION
  spec.authors       = ["Adrien Bourgeois"]
  spec.email         = ["adrienfrancis.bourgeois@gmail.com"]
  spec.summary       = %q{Write elasticsearch query in a blink!}
  spec.description   = %q{A set of helpers to easily write elasticsearch query. Work great on top of elasticsearch-rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "pry", "~> 0.10.1"  
end
