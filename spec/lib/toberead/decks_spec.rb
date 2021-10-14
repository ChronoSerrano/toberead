# frozen_string_literal: true

require "spec_helper"

::RSpec.describe(::ToBeRead::Deck) do
  let(:deck_type) { "prompts" }
  let(:return_value) { ["test TEST Test"] }

  subject(:test_deck) { described_class.new(deck_type) }

  describe "#initialize" do
    subject { test_deck.instance_variable_get(:@deck) }
    it { is_expected.to_not eq(nil)}
  end

  describe "#shuffle" do
    it "should return a titleized version of a single array element" do
      test_deck.instance_variable_set(:@deck, return_value)
      expect(test_deck.shuffle).to(eq("Test Test Test"))
    end
  end
end
