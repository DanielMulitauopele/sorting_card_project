class Card
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def value
    @value
  end

  def suit
    @suit
  end
end

card = Card.new("King", "Hearts")

p card.value
