class Controller
  CARD_VALUE = 1

  def run(file)
    deck = Deck.new(file)
    number_of_cards = deck.cards.count
    correct = 0
    until deck.is_gone? do
      current_card = deck.get_current_card
      View.show_question(current_card)
      response = View.prompt_user
      if response == "quit"
        abort
      else
        correctness = current_card.correct?(response)
        View.correctness_response(correctness)
        puts
        correct += CARD_VALUE if correctness
      end
    end
    View.final_score(correct, number_of_cards)
  end
end
