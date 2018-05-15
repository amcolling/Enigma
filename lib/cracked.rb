require './lib/enigma'

filename = File.open(ARGV[0], 'r')
input_text = filename.read.gsub("\n", " ").strip
filename.close

enigma = Enigma.new

output_file = File.open(ARGV[1], 'w')
output_file.write(enigma.cracked(input_text, ARGV[2]))
output_file.close

puts "Created 'cracked.txt' with the cracked key #{enigma.key} and date #{enigma.date}"
