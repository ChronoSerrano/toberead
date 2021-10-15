# frozen_string_literal: true

require "titleize"

module ToBeRead
  # Management for TBR decks
  class Deck
    # Build deck from template associated with deck_type
    # @param deck_type [String] The type of deck to load the template for
    # @return [Array<String>] An array loaded with the entries for the specified deck
    def initialize(deck_type)
      @deck = ::ERB.new(
        ::File.read(
          ::File.join(
            ::ToBeRead::TEMPLATE_DIR,
            "#{deck_type}.erb",
          ),
        ),
      ).result(binding).split("\n")
    end

    # Shuffle the deck and select one card
    # @return [String] The value of one card from the deck
    def shuffle
      @deck.sample.downcase.titleize
    end
  end
end
