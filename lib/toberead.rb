# frozen_string_literal: true

# require all files under lib/toberead
::Dir.glob(::File.join(::File.dirname(::File.absolute_path(__FILE__)), "toberead", "*.rb"), &method(:require))

# Top-level Module for Project
module ToBeRead
  # Set template path
  # @return [::String]
  TEMPLATE_DIR = ::File.join(__dir__, "toberead", "templates")
  public_constant :TEMPLATE_DIR
end
