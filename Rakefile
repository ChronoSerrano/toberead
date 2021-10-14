# frozen_string_literal: true

require "bundler/gem_tasks"

begin
  require("rspec/core/rake_task")
  ::RSpec::Core::RakeTask.new(:spec)
rescue ::LoadError
  warn("No RSpec available")
end

begin
  require("rubocop/rake_task")
  ::RuboCop::RakeTask.new
rescue ::LoadError
  warn("No Rubocop available")
end

task default: %i[spec rubocop]
