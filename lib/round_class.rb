require './lib/card_class.rb'
require './lib/guess_class.rb'
require './lib/deck_class.rb'
require 'pry'

class Round
  attr_reader :deck, :correct_guesses, :total_guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @new_response = ""
    @correct_guesses = 0
    @total_guesses = 0
  end

  def guesses
    @guesses
  end

  def current_card
    @current_card = deck.cards.first
  end

  def record_guess(hash)
    @new_response = "#{hash[:value]} of #{hash[:suit]}"
    new_guess = Guess.new(@new_response, current_card)

    if new_guess.correct?
      @correct_guesses += 1
    end

    @total_guesses += 1

    @deck.cards.shift
    @current_card = @deck.cards[0]

    return new_guess
  end

  def number_correct
    @correct_guesses
  end

  def percent_correct
    (@correct_guesses / @total_guesses.to_f).round(3) * 100
  end
end
