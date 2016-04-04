# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bedo_grading/version'

Gem::Specification.new do |spec|
  spec.name          = "bedo_grading"
  spec.version       = BedoGrading::VERSION
  spec.authors       = ["amrdruid"]
  spec.email         = ["amrdruid@gmail.com"]

  spec.summary       = %q{Questions grading gem}
  spec.description   = %q{A score is set with given questions and answers, giving the questions scores}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
