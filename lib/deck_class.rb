require './lib/card_class.rb'
require './lib/guess_class.rb'

class Deck
  def initialize(deck)
    @deck = deck
  end

  def cards
    @deck
  end

  def count
    @deck.count
  end

  def sort(deck)
    card_array = deck.cards

    loop do
      swap = false

      (card_array - 1).times do |card|
      if card_array[card].card_value > card_array[card + 1].card_value 
        card_array[card], card_array[card + 1] = card_array[card + 1], card_array[card]

        swap = true
      end
    end

    break if not swapped


    return card_array

    end
  end
end

card_1 = Card.new("4","Hearts")
card_2 = Card.new("Jack", "Clubs")
card_3 = Card.new("5", "Diamonds")
card_4 = Card.new("Ace", "Spades")
card_5 = Card.new("Ace", "Diamonds")
deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
p card_1.suit
