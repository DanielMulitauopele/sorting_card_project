require './lib/card_class.rb'

class Deck
  def initialize(card_1, card_2, card_3)
    @card_1 = card_1
    @card_2 = card_2
    @card_3 = card_3
  end

  def cards
    cards = [@card_1, @card_2, @card_3]
  end

  def count
    cards.count
  end
end
