# frozen_string_literal: true

require_relative "lib/has_any/version"

Gem::Specification.new do |s|
  s.name = "has_any"
  s.version = HasAny::VERSION
  s.authors = ["Klaus Weidinger"]
  s.email = ["Klaus Weidinger"]
  s.homepage = "https://github.com/dunkelziffer/has_any"
  s.summary = "Example description"
  s.description = "Example description"

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/dunkelziffer/has_any/issues",
    "changelog_uri" => "https://github.com/dunkelziffer/has_any/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://github.com/dunkelziffer/has_any",
    "homepage_uri" => "https://github.com/dunkelziffer/has_any",
    "source_code_uri" => "https://github.com/dunkelziffer/has_any"
  }

  s.license = "MIT"

  s.files = Dir.glob("lib/**/*") + Dir.glob("lib/.rbnext/**/*") + Dir.glob("bin/**/*") + %w[README.md LICENSE.txt CHANGELOG.md]
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 2.7"

  s.add_development_dependency "bundler", ">= 1.15"
  s.add_development_dependency "combustion", ">= 1.1"
  s.add_development_dependency "rake", ">= 13.0"
  s.add_development_dependency "rspec", ">= 3.9"

  # When gem is installed from source, we add `ruby-next` as a dependency
  # to auto-transpile source files during the first load
  if ENV["RELEASING_GEM"].nil? && File.directory?(File.join(__dir__, ".git"))
    s.add_runtime_dependency "ruby-next", ">= 0.15.0"
  else
    s.add_dependency "ruby-next-core", ">= 0.15.0"
  end
end
