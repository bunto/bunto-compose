# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bunto-compose/version'

Gem::Specification.new do |spec|
  spec.name          = "bunto-compose"
  spec.version       = Bunto::Compose::VERSION
  spec.authors       = ["Parker Moore", "Suriyaa Kudo"]
  spec.email         = ["parkrmoore@gmail.com", "SuriyaaKudoIsc@users.noreply.github.com"]
  spec.summary       = %q{Streamline your writing in Bunto with these commands.}
  spec.description   = %q{Streamline your writing in Bunto with these commands.}
  spec.homepage      = "https://github.com/bunto/bunto-compose"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").grep(%r{(bin|lib)/})
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bunto", "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
