require './card_class.rb'

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

card_1 = Card.new("3", "Hearts")
card_2 = Card.new("4", "Clubs")
card_3 = Card.new("5", "Diamonds")

deck = Deck.new(card_1, card_2, card_3)

p deck.cards
