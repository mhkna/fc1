array = []

files = ['./nighthawk_flashcard_data.txt', './raccoon_flashcard_data.txt', './otter_flashcard_data.txt']

File.open(files[0], 'r') do |file|
  file.each_line.each_slice(3) do |question, answer|
    array << {question: question.chomp, answer: answer.chomp}
  end
end

p array
