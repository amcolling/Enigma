require './lib/enigma'

filename = File.open(ARGV[0], 'r')
input_text = filename.read.gsub("\n", " ").strip
filename.close

enigma = Enigma.new

output_file = File.open(ARGV[1], 'w')
output_file.write(enigma.decrypt(input_text, ARGV[2], ARGV[3]))
output_file.close

puts "Created 'decrypted.txt' with the key #{enigma.key} and date #{enigma.date}"
