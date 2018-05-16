require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'
require './lib/cipher'

filename = File.open(ARGV[0], 'r')
input_text = filename.read
filename.close

e = Enigma.new

output_file = File.open(ARGV[1], 'w')
output_file.write(e.decrypt(input_text, ARGV[2]))
output_file.close

puts "Created 'decrypted.txt' with the key #{e.key} and date #{e.date}"
