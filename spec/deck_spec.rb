require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    it "exists" do

        card_1 = Card.new(:spade, 'Ace', 14)
        deck = Deck.new(card_1)

        expect(deck).to be_an_instance_of(Deck)

    end

    xit "can gain new cards" do
        
        card_1 = Card.new(:spade, 'Ace', 14)
        deck = Deck.new(card_1)
        card_2 = Card.new(:heart, 'Queen', 12)
        
        p card_1
        p deck

        deck.add_card(card_2)

        expect(deck.cards).to contain(@suit=:heart, @value='Queen', @rank=12)

        

        
    end

    it "has readable attributes" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)
        card3 = Card.new(:heart, 'Ace', 14)
        cards = [card1, card2, card3]
        deck = Deck.new(cards)

    end

    it "can read 1stt or 3rd card rank" do

    end

    it "has high Face Cards" do

    end

    it "has percent Face Cards" do

    end

    it "draws cards" do

    end
    
end

