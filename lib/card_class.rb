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

  def card_value
    card_value_hash = {"Ace": 14, "King": 13, "Queen": 12, "Jack": 11, "10": 10, "9": 9, "8": 8, "7": 7, "6": 6, "5": 5, "4": 4, "3": 3, "2": 2}
    card_suit_hash = {"Spades": .04, "Hearts": .03, "Diamonds": .02, "Clubs": .01}

    card_value = card_value_hash[value] + card_suit_hash[suit]
  end
end
