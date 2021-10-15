# frozen_string_literal: true

module ToBeRead
  # Catch-all Error class
  class DefaultError < StandardError; end

  # Property doesn't exist
  class InvalidPropertyError < StandardError
    # pass property into message
    # @param property [String] The property queried that doesn't exist
    def initialize(property)
      super("Unknown property: #{property}")
    end
  end
end
