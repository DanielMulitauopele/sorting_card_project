require './lib/card_class.rb'
require './lib/guess_class.rb'
require './lib/deck_class.rb'

class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def guesses
  end

  def current_card
  end

  def record_guess(guess)
  end

  def number_correct
  end

  def percent_correct
  end
end
