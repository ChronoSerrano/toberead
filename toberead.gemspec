# frozen_string_literal: true

require_relative "lib/toberead/version"

::Gem::Specification.new do |spec|
  spec.name          = "toberead"
  spec.version       = ::ToBeRead::VERSION
  spec.authors       = ["ChronoSerrano"]
  spec.email         = ["619512+ChronoSerrano@users.noreply.github.com"]

  spec.summary       = "Write a short summary, because RubyGems requires one."
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "https://github.com/chronoserrano/toberead"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.2"

  # rubocop:disable Style/StringHashKeys
  spec.metadata = {
    "allowed_push_host" => "https://rubygems.org",
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "#{spec.homepage}/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://www.rubydoc.info/gems/toberead",
    "bug_tracker_uri" => "#{spec.homepage}/issues"
  }
  # rubocop:enable Style/StringHashKeys

  spec.files         = ::Dir["lib/**/*"]
  spec.bindir        = "bin"
  spec.executables   = ["tbr"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("titleize", "~> 1.4")
end
