require './lib/card_class.rb'
require 'minitest/autorun'
require 'minitest/pride'

class CardTest < Minitest::Test
  def test_what_is_its_value
    card = Card.new("7", "Spades")
    expected = "7"
    actual = card.value

    assert_equal expected, actual
  end

  def test_what_is_its_suit
    card = Card.new("7", "Spades")
    expected = "Spades"
    actual = card.suit

    assert_equal expected, actual
  end

end
