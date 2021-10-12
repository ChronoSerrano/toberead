# frozen_string_literal: true

require_relative "toberead/decks"
require_relative "toberead/properties"

module ToBeRead
  VERSION = "0.1.0"

  class Error < StandardError; end

  class << self
    attr_reader :template_dir

    def template_dir = File.join(__dir__, "toberead", "templates")
  end
end
