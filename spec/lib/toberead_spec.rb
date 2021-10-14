# frozen_string_literal: true

require "spec_helper"

::RSpec.describe(::ToBeRead) do
  describe ".template_dir" do
    let(:template_file) { "properties.yaml.erb" }
    it "should include templates" do
      expect(::Dir.entries(::ToBeRead.template_dir).include?(template_file)).to(eq(true))
    end
  end
end
