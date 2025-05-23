require './lib/player'
require './lib/deck'
require './lib/card'
require './lib/turn'
require 'pry'

RSpec.describe Turn do

    before(:each) do
        @card1 = Card.new(:heart, 'Jack', 11)
        @card2 = Card.new(:heart, '10', 10)    
        @card3 = Card.new(:heart, '9', 9)    
        @card4 = Card.new(:diamond, 'Jack', 11)    
        @card5 = Card.new(:heart, '8', 8)    
        @card6 = Card.new(:diamond, 'Queen', 12)    
        @card7 = Card.new(:heart, '3', 3)    
        @card8 = Card.new(:diamond, '2', 2)  
        
        @deck1 = Deck.new([@card1, @card2, @card5, @card8])
        @deck2 = Deck.new([@card3, @card4, @card6, @card7])
        @player1 = Player.new("Megan", @deck1)
        @player2 = Player.new("Aurora", @deck2)
        @turn = Turn.new(@player1, @player2)

    end


    it 'exists'do
    
        expect(@turn).to be_an_instance_of(Turn)

    end

    it 'does player1 turn' do
         
    
        expect(@turn.player1.name).to eq('Megan') 

    end

    it 'does a full turn' do
      
        expect(@turn.spoils_of_war).to eq([])

    end

    it 'can tell a turn type' do
        
        expect(@turn.type).to eq(:basic)
    end
    
    it 'can tell a winner' do
                
        expect(@turn.winner.name).to eq("Megan")
    end

    it 'can tell turn type' do
        
        expect(@turn.type).to eq(:basic)

    end

    it 'can tell turn winner' do
        
        expect(@turn.winner).to eq(@player1)
    end

    it 'adds to spoils' do
        
        @turn.add_to_basic_spoils

        
        expect(@turn.spoils_of_war).to include(@card7, @card8)

    end

    it 'awards spoils' do
        @turn.add_to_basic_spoils
        @turn.award_spoils(@player1)
        #binding.pry
        expect(@turn.player1.deck.cards).to include(@card8, @card7)
    end






end