# frozen_string_literal: true

require "yaml"

module ToBeRead
  # Load properties to populate TBR decks
  class Property
    class << self
      # Select a book property to fill in deck values
      def select(property)
        properties = ::YAML.safe_load(load_template)
        property_string = property.to_s
        abort("Unknown property: #{property}") unless properties.key?(property_string)
        properties[property_string].sample
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
