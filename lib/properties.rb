class Property
    class << self
        def select(property)
            properties = YAML.load(load_template)
            abort("Unknown property: #{property}") unless properties.key? property
            properties[property].sample
        end 

        private
        def load_template
            @load_template ||= ERB.new(
                File.read(
                File.join("lib","templates","properties.yaml.erb")
                )
            ).result(binding)
        end
    end
end
