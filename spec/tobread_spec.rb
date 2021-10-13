# frozen_string_literal: true

require "spec_helper"

::RSpec.describe(::ToBeRead) do
  it "has a version number" do
    expect(::ToBeRead::VERSION).not_to(be(nil))
  end

  it "does something useful" do
    expect(false).to(eq(false))
  end
end

::RSpec.describe(::ToBeRead::Deck) do
  # let (:deck) {["test", "test1"]}
  let(:deck_name) { "prompts" }
  let(:test_deck) { ::ToBeRead::Deck.new(deck_name) }
  let(:return_value) { ["test TEST Test"] }

  describe "#shuffle" do
    it "should work" do
      test_deck.instance_variable_set(:@deck, return_value)
      expect(test_deck.shuffle).to(eq("Test Test Test"))
    end
  end
  # # before(:each) { @deck = .new(:foo) }

  # # let()
  # let(:return_value) { "test" }
  # it "returns the specified value on any instance of the class" do
  #   another_member_double = double()
  #   allow(::ToBeRead::Deck).to receive(:new).and_return(another_member_double)

  #   # ::ToBeRead::Deck.any_instance_of.stub(:shuffle).and_return(:return_value)

  #   # o = Object.new
  #   # o.foo.should eq(:return_value)
  # end
end
