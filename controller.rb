class Controller
  def run(file)
    card_array = Parse.get(file)
    deck = Deck.new({cards: card_array})
    until deck.is_gone? do
      CardView.show_question(deck.get_current_card)
    end
  end
end
