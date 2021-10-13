# frozen_string_literal: true

require_relative 'toberead/decks'
require_relative 'toberead/properties'

# Top-level Module for Project
module ToBeRead
  VERSION = '0.1.1'
  public_constant :VERSION

  # Catch-all Error class
  class Error < StandardError; end

  # Set template path
  def self.template_dir = ::File.join(__dir__, 'toberead', 'templates')
end
