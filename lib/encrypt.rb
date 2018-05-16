require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'
require './lib/cipher'

filename = File.open(ARGV[0], 'r')
input_text = filename.read

filename.close

e = Enigma.new


output_file = File.open(ARGV[1], 'w')
output_file.write(e.encrypt(input_text))
output_file.close

puts "Created 'encrypted.txt' with the key #{e.key} and date #{e.date}"
