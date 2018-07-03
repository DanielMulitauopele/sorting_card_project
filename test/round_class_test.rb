require './lib/round_class.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class DeckTest < Minitest::Test
  def test_whats_in_the_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new(card_1, card_2, card_3)
    round = Round.new(deck)
    # binding.pry
    expected = deck
    actual = round.deck

    assert_equal expected, actual
  end
end
