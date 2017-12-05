module Parse
  def self.get(filename)
    cards = []
    File.open(filename, 'r') do |file|
      file.each_line.each_slice(3) do |question, answer|
        cards << Card.new({
          question: question.chomp,
          answer: answer.chomp
        })
      end
    end
    cards
  end
end
