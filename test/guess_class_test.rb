require './lib/guess_class.rb'
require 'minitest/autorun'
require 'minitest/pride'

class GuessTest < Minitest::Test
  def test_what_is_the_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expected = card
    actual = guess.card

    assert_equal expected, actual
  end

  def test_what_is_user_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expected = "10 of Hearts"
    actual = guess.response

    assert_equal expected, actual
  end

  def test_what_are_card_details
    card = Card.new("5", "Clubs")
    guess = Guess.new("10 of Hearts", card)
    expected = ["5", "Clubs"]
    actual = guess.card_details

    assert_equal expected, actual
  end

  def test_what_are_response_details
    card = Card.new("10", "Hearts")
    guess = Guess.new("Ace of Spades", card)
    expected = ["Ace", "Spades"]
    actual = guess.response_details

    assert_equal expected, actual
  end

  def test_is_guess_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expected = true
    actual = guess.correct?

    assert_equal expected, actual
  end

  def test_what_is_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("2 of Diamonds", card)
    expected = "Incorrect."
    actual = guess.feedback

    assert_equal expected, actual
  end
end
