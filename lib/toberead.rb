# frozen_string_literal: true

require_relative "toberead/decks"
require_relative "toberead/properties"
require_relative "toberead/errors"

# Top-level Module for Project
module ToBeRead


  # Set template path
  def self.template_dir
    ::File.join(__dir__, "toberead", "templates")
  end
end
