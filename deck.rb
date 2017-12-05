class Deck
  attr_reader :cards

  def initialize(file)
    @cards = Parse.get(file)
  end

  def get_current_card
    current_card = cards.shuffle.pop
    cards.delete(current_card)
    current_card
  end

  def is_gone?
    cards.empty?
  end
end
