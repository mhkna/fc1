class Controller
  def run(file)
    card_array = Parse.get(file)
    deck = Deck.new({cards: card_array})
    until deck.is_gone? do
      CardView.show_question(deck.get_current_card)
      #promp user
      #if response == correct -> count += 1
    end
    # View.correctness count/5
  end
end
