class Deck
    def initialize(deck_type)
        @deck = ERB.new(
            File.read(
            File.join("#{deck_type}.erb")
            )
        ).result(binding).split("\n")
    end

    def shuffle
        @deck.sample.downcase.titleize
    end
        
end