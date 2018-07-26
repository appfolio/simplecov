# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "simplecov/version"

Gem::Specification.new do |gem|
  gem.name        = "simplecov"
  gem.version     = SimpleCov::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Christoph Olszowka"]
  gem.email       = ["christoph at olszowka de"]
  gem.homepage    = "http://github.com/colszowka/simplecov"
  gem.description = %(Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites)
  gem.summary     = gem.description
  gem.license     = "MIT"

  gem.required_ruby_version = ">= 1.8.7"

  gem.add_dependency "json", ">= 1.8", "< 3"
  gem.add_dependency "simplecov-html", "~> 0.10.0"
  gem.add_dependency "docile", "~> 1.1"
  gem.add_dependency "coverage-helpers", "~> 1" # TODO: depend on ruby_version >= 2.5

  gem.add_development_dependency "bundler", "~> 1.9"

  gem.files         = Dir["{lib}/**/*.*", "bin/*", "LICENSE", "*.md", "doc/*"]
  gem.require_paths = ["lib"]
end
