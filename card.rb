class Card
  attr_reader :question, :answer

  def initialize(args = {})
    @question = args[:question]
    @answer = args[:answer]
  end

  def correct?(guess)
    guess.downcase == answer.downcase
  end
end
