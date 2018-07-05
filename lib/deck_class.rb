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

  def sort
    card_array = cards

    loop do
      swap = false

      (card_array.length - 1).times do |card|
      if card_array[card].card_value > card_array[card + 1].card_value
        card_array[card], card_array[card + 1] = card_array[card + 1], card_array[card]

        swap = true
      end
    end

    break if not swap


    return card_array

    end
  end
end
