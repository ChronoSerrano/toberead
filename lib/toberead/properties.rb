# frozen_string_literal: true

module ToBeRead
  # Load properties to populate TBR decks
  class Property
    class << self
      # Select a book property to fill in deck values
      def select(property)
        properties = ::YAML.safe_load(load_template)
        abort("Unknown property: #{property}") unless properties.key?(property.to_s)
        properties[property.to_s].sample
      end

      private

      def load_template
        @load_template ||= ::ERB.new(
          ::File.read(
            ::File.join(::ToBeRead.template_dir, 'properties.yaml.erb')
          )
        ).result(binding)
      end
    end
  end
end
