require './lib/deck_class.rb'
require 'minitest/autorun'
require 'minitest/pride'

class DeckTest < Minitest::Test
  def test_show_the_cards
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("3", "Spades")
    card_3 = Card.new("Jack", "Hearts")
    deck = Deck.new([card_1, card_2, card_3])
    expected = [card_1, card_2, card_3]
    actual = deck.cards

    assert_equal expected, actual
  end

  def test_how_many_cards
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("3", "Spades")
    card_3 = Card.new("Jack", "Hearts")
    deck = Deck.new([card_1, card_2, card_3])
    expected = 3
    actual = deck.count

    assert_equal expected, actual
  end
end
