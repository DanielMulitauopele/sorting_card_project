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

  def test_sort_method
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])

    expected = [card_1, card_3, card_2, card_5, card_4]
    actual = deck.sort

    assert_equal expected, actual
  end
end
