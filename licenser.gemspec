# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'licenser/version'

Gem::Specification.new do |spec|
  spec.name          = "licenser"
  spec.version       = Addlicense::VERSION
  spec.authors       = ["Zach Latta"]
  spec.email         = ["zchlatta@gmail.com"]
  spec.description   = %q{The easiest way to add licenses to your projects.}
  spec.summary       = %q{licenser is the easiest way to add licenses to
                          your projects.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"

  spec.add_dependency "commander", "~> 4.1.4"
end
