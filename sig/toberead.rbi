# typed: strong
# Version number management
module ToBeRead
  TEMPLATE_DIR = T.let(::File.join(__dir__, "toberead", "templates"), T.untyped)
  VERSION = T.let("0.1.0", T.untyped)

  # Management for TBR decks
  class Deck
    # Build deck from template associated with deck_type
    # 
    # _@param_ `deck_type` — The type of deck to load the template for
    # 
    # _@return_ — An array loaded with the entries for the specified deck
    sig { params(deck_type: String).void }
    def initialize(deck_type); end

    # Shuffle the deck and select one card
    # 
    # _@return_ — The value of one card from the deck
    sig { returns(String) }
    def shuffle; end
  end

  # Catch-all Error class
  class DefaultError < StandardError
  end

  # Property doesn't exist
  class InvalidPropertyError < StandardError
    # pass property into message
    # 
    # _@param_ `property` — The property queried that doesn't exist
    sig { params(property: String).void }
    def initialize(property); end
  end

  module Property
    # Load template into property map
    # 
    # _@return_ — A hash of possible book properties
    sig { returns(T::Hash[Symbol, String]) }
    def properties; end

    # Load template into property map
    # 
    # _@return_ — A hash of possible book properties
    sig { returns(T::Hash[Symbol, String]) }
    def self.properties; end

    # Convert property to string from symbol
    # 
    # _@param_ `property` — The book property to search for
    # 
    # _@return_ — The specified book property converted to a string
    sig { params(property: Symbol).returns(String) }
    def property_string(property); end

    # Convert property to string from symbol
    # 
    # _@param_ `property` — The book property to search for
    # 
    # _@return_ — The specified book property converted to a string
    sig { params(property: Symbol).returns(String) }
    def self.property_string(property); end

    # Select a book property to fill in deck values
    # 
    # _@param_ `property` — The book property to search for
    # 
    # _@return_ — The value of the property queried
    sig { params(property: Symbol).returns(String) }
    def select(property); end

    # Select a book property to fill in deck values
    # 
    # _@param_ `property` — The book property to search for
    # 
    # _@return_ — The value of the property queried
    sig { params(property: Symbol).returns(String) }
    def self.select(property); end

    # Load the template file into a populated YAML string
    # 
    # _@return_ — YAML string with values to be used by the decks
    sig { returns(String) }
    def template; end

    # Load the template file into a populated YAML string
    # 
    # _@return_ — YAML string with values to be used by the decks
    sig { returns(String) }
    def self.template; end
  end
end
