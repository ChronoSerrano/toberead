# frozen_string_literal: true

require "yaml"

module ToBeRead
  # Manage book properties
  module Property
    module_function

    # Load template into property map
    # @return [Hash<Symbol,String>] A hash of possible book properties
    def properties
      @properties ||= ::YAML.safe_load(template)
    end

    # Convert property to string from symbol
    # @param property [Symbol] The book property to search for
    # @return [String] The specified book property converted to a string
    def property_string(property)
      property.to_s
    end

    # Select a book property to fill in deck values
    # @param property [Symbol] The book property to search for
    # @raise [::ToBeRead::InvalidPropertyError] if a property is requested that doesn't exist
    # @return [String] The value of the property queried
    def select(property)
      property_string = property_string(property)
      raise(::ToBeRead::InvalidPropertyError, property) unless properties.key?(property_string)

      properties[property_string].sample
    end

    # Load the template file into a populated YAML string
    # @return [String] YAML string with values to be used by the decks
    def template
      ::ERB.new(::File.read(::File.join(::ToBeRead::TEMPLATE_DIR, "properties.yaml.erb"))).result(binding)
    end
  end

  # Load properties to populate TBR decks
  # class Property
  #   # Load template into property map
  #   # @return [Hash<Symbol,String>] A hash of possible book properties
  #   def self.properties
  #     @properties ||= ::YAML.safe_load(template)
  #   end

  #   # Convert property to string from symbol
  #   # @param property [Symbol] The book property to search for
  #   # @return [String] The specified book property converted to a string
  #   def self.property_string(property)
  #     property.to_s
  #   end

  #   # Select a book property to fill in deck values
  #   # @param property [Symbol] The book property to search for
  #   # @raise [::ToBeRead::InvalidPropertyError] if a property is requested that doesn't exist
  #   # @return [String] The value of the property queried
  #   def self.select(property)
  #     property_string = property_string(property)
  #     raise(::ToBeRead::InvalidPropertyError, property) unless properties.key?(property_string)

  #     properties[property_string].sample
  #   end

  #   def self.template
  #     ::ERB.new(::File.read(::File.join(::ToBeRead::TEMPLATE_DIR, "properties.yaml.erb"))).result(binding)
  #   end
  # end
end
