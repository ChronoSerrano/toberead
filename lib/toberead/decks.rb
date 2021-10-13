# frozen_string_literal: true

require "titleize"

module ToBeRead
  # Management for TBR decks
  class Deck
    # Build deck from template associated with deck_type
    def initialize(deck_type)
      @deck = ::ERB.new(
        ::File.read(
          ::File.join(
            ::ToBeRead.template_dir,
            "#{deck_type}.erb"
          )
        )
      ).result(binding).split("\n")
    end

    # Shuffle the deck and select one card
    def shuffle
      @deck.sample.downcase.titleize
    end
  end
end
