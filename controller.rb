class Controller
  def run(file)
    deck = Deck.new(file)
    correct = 0
    until deck.is_gone? do
      current = deck.get_current_card
      CardView.show_question(current)
      answer = CardView.prompt_user
      if answer == "quit"
        abort
      elsif answer == current.answer.downcase
        puts "correct"
        correct += 1
      else
        puts "wrong"
      end
    end
    puts "#{correct} out of 5 correct"
  end
end
