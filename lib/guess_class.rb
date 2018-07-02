require './card_class.rb'

class Guess
  def initialize(response, card)
    @card = card
    @response = response
  end

  def card
    @card
  end

  def response
    @response
  end

  def correct?
    if guess.card_details == guess.response_details
      trueg
    end
  end

  def card_details
    card_deets = []
    card_deets << card.value
    card_deets << card.suit
  end

  def response_details
    response_deets = []
    response_deets << response.split[0]
    response_deets << response.split[-1]
  end

  def feedback
    if guess.correct? == true
      print "Correct!"
    else
      print "Incorrect."
    end
  end
end


card = Card.new("10", "Hearts")
guess = Guess.new("10 of Hearts", card)

p guess.correct?
