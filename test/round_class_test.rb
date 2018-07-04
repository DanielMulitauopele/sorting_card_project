require './lib/round_class.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_it_has_a_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    expected = deck
    actual = round.deck

    assert_equal expected, actual
  end

  def test_guesses_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    expected = []
    actual = round.guesses

    assert_equal expected, actual
  end

  def test_what_is_the_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    expected = card_1
    actual = round.current_card

    assert_equal expected, actual
  end

  def test_what_is_the_recorded_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    guess = Guess.new("9 of Clubs", card_1)

    expected = guess
    actual = round.record_guess({value: "9", suit: "Clubs"})

    assert_instance_of Guess, actual
  end

  def test_what_is_the_number_correct?
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    expected = 0
    actual = round.number_correct

    assert_equal expected, actual
  end

  def test_what_is_the_percent_correct?
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("Jack", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    guess_1 = round.record_guess({value: "3", suit: "Hearts"})
    guess_2 = round.record_guess({value: "9", suit: "Clubs"})
    guess_3 = round.record_guess({value: "Jack", suit: "Diamonds"})

    expected = 66.7
    actual = round.percent_correct

    assert_equal expected, actual
  end
end
