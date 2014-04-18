# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'image_science/version'

Gem::Specification.new do |spec|
  spec.name          = "image_science"
  spec.version       = ImageScience::VERSION
  spec.authors       = ["Christopher J. Bottaro"]
  spec.email         = ["cjbottaro@alumni.cs.utexas.edu"]
  spec.summary       = %q{Better maintained version of ImageScience}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"

  spec.add_dependency "RubyInline", "~> 3.9"
end
