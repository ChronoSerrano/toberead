# frozen_string_literal: true

require "spec_helper"

::RSpec.describe(::ToBeRead::Property) do
  let(:properties)      { described_class.properties                    }
  let(:property_string) { described_class.property_string(:test_string) }

  describe ".properties" do
    it { expect(properties.class).to(eq(::Hash)) }
  end

  describe ".property_string" do
    it { expect(property_string).to(eq("test_string")) }
    it { expect(property_string.class).to(eq(::String)) }
  end

  describe ".select" do
    let(:color_property) { described_class.select(:color) }

    context "when the property doesn't exist" do
      let(:blah_property) { described_class.select(:blah) }

      it "raises an InvalidPropertyError" do
        expect { blah_property }
          .to(raise_error(::ToBeRead::InvalidPropertyError))
      end
    end

    context "when the property is valid" do
      let(:first_color) { "red" }

      it { expect(color_property.class).to(eq(::String)) }
      it { expect(properties["color"].first).to(eq(first_color)) }
    end
  end
end
