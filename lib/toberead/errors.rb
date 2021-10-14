# frozen_string_literal: true

module ToBeRead
  # Catch-all Error class
  class DefaultError < StandardError; end

  # Property doesn't exist
  class InvalidPropertyError < StandardError
    # pass property into message
    def initialize(property)
      super("Unknown property: #{property}")
    end
  end
end
