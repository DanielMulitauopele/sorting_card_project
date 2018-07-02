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

  def correct?
    if card_details == response_details
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      "Correct!"
    else
      "Incorrect."
    end
  end
end


card = Card.new("10", "Hearts")
guess = Guess.new("10 of Hearts", card)

print guess.feedback
