class Deck
  attr_reader :cards

  def initialize(args = {})
    @cards = args[:cards]
  end

  def get_current_card
    cards.shuffle.pop
  end

  def is_gone?
    cards.empty?
  end
end
