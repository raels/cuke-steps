# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cuke_steps_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "cuke_steps"
  spec.version       = CukeStepsGem::VERSION
  spec.authors       = ["plaa"]
  spec.email         = [""]

  spec.summary       = %q{Generates Gherkin step reference page}
  spec.description   = %q{This gem offers a program to generate a reference index for your Gherkin step definitions.
                          It was written by plaa, and packaged by raels.}
  spec.homepage      = "https://github.com/plaa/cuke-steps/"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
