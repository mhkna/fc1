require_relative 'parse'

if ARGV.any?
  deck = ARGV[0]
else
  puts "specify a file"
end

p deck
