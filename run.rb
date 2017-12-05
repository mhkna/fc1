require_relative 'parse.rb'
require_relative 'controller.rb'
require_relative 'deck.rb'
require_relative 'view.rb'
require_relative 'card.rb'

if ARGV.any?
  file = ARGV[0]
  controller = Controller.new
  controller.run(file)
else
  CardView.help
end
