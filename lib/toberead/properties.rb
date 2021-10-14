# frozen_string_literal: true

require "yaml"

module ToBeRead
  # Load properties to populate TBR decks
  class Property
    class << self
      # Convert template into property map
      def properties
        @properties ||= ::YAML.safe_load(load_template)
      end

      # Convert property to string from symbol
      def property_string(property)
        property.to_s
      end

      # Select a book property to fill in deck values
      def select(property)
        @property_string = property_string(property)
        raise(::ToBeRead::InvalidPropertyError, property) unless properties.key?(@property_string)

        properties[@property_string].sample
      end

      private

      def load_template
        @load_template ||= ::ERB.new(
          ::File.read(
            ::File.join(::ToBeRead.template_dir, "properties.yaml.erb")
          )
        ).result(binding)
      end
    end
  end
end
