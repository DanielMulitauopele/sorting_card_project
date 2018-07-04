require './lib/card_class.rb'
require './lib/guess_class.rb'
require './lib/deck_class.rb'
require 'pry'

class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck
    @guesses = []
    @new_response = ""
    @correct_guesses = 0
  end

  def guesses
    @guesses
  end

  def current_card
    @current_card = deck.cards.first
  end

  def record_guess(hash)
    @new_response = "#{hash[:value]} of #{hash[:suit]}"
    new_guess = Guess.new(@new_response, @current_card)
  end

  # def number_correct
  # end

  # def percent_correct
  # end
end
