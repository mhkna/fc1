module View
  def self.show_question(card)
    puts card.question
  end

  def self.help
    puts "You must include a filename"
  end

  def self.prompt_user
    $stdin.gets.chomp.downcase
  end

  def self.correctness_response(response)
    puts response ? "Correct!" : "Wrong!"
  end

  def self.final_score(correct, total_cards)
    puts "You correctly answered #{correct} of #{total_cards} cards"
  end
end
