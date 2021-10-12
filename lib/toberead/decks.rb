# frozen_string_literal: true

module ToBeRead
  # Management for TBR decks
  class Deck
    def initialize(deck_type)
      @deck = ERB.new(
        File.read(
          File.join(ToBeRead.template_dir, "#{deck_type}.erb")
        )
      ).result(binding).split("\n")
    end

    def shuffle
      @deck.sample.downcase.titleize
    end
  end
end
