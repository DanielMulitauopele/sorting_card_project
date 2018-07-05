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

end
