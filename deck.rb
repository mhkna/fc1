class Deck
  attr_reader :cards

  def initialize(args = {})
    @cards = args[:cards]
  end

  def get_current_card
    current = cards.shuffle.pop
    cards.delete(current)
    current
  end

  def is_gone?
    cards.empty?
  end
end
