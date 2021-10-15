# frozen_string_literal: true

require "spec_helper"

::RSpec.describe(::ToBeRead) do
  describe ".template_dir" do
    let(:template_file) { "properties.yaml.erb" }

    it "includes templates" do
      expect(::Dir.entries(::ToBeRead::TEMPLATE_DIR).include?(template_file)).to(eq(true))
    end
  end
end
