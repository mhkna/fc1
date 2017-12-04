module CardView
  def self.show_question(card)
    puts card.question
  end

  def self.help
    puts "you must include a filename"
  end

  def self.prompt_user
    $stdin.gets.chomp.downcase
  end
end
