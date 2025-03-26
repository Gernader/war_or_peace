require './lib/card'

class Deck
    attr_reader :cards

    def initialize(card)
        @cards = [card]
    end

    def add_card(card)
        @cards.unshift(card)
    end

end