class Controller
  def run(file)
    deck = Deck.new(file)
    correct = 0
    until deck.is_gone? do
      current = deck.get_current_card
      CardView.show_question(current)
      response = CardView.prompt_user
      if response == "quit"
        abort
      elsif response == current.answer.downcase
        puts "correct!"
        puts
        correct += 1
      else
        puts "wrong!"
        puts
      end
    end
    puts "You correctly answered #{correct} of 5 cards"
    puts
  end
end
