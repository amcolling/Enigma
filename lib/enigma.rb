require 'pry'
class Enigma
  attr_reader :a

  def initialize
    @character_map =
    [ "a", "b", "c", "d", "f", "g", "h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
    # @a = []
  end

  def encrypt_single(my_message, key, offset)
    rotations = combine_rotations_and_offsets(key, offset)
    zipped_hash = @character_map.zip(@character_map.rotate(rotations[0])).to_h
    encrypted_letter = zipped_hash.fetch(my_message)
    encrypted_letter
  end

  def combine_rotations_and_offsets(key, offset)
    rotation_array = []
    rotation_array << offset[0] + key[0]
    rotation_array << offset[1] + key[1]
    rotation_array << offset[2] + key[2]
    rotation_array << offset[3] + key[3]
    rotation_array
  end


  def encrypt_message(my_message, key, offset)
    letters = my_message.to_s.downcase.split("")
    count = 0
    letters.map do |letter|
      (count = 0) if count == 4
      encrypted_letter = encrypt_single(letter, offset[count])
      count += 1
      encrypted_letter
      binding.pry
    end.join
  end

  def decrypt(my_message, key=rand(10000..99999), date=Date.today)
    @key = key
    @date = date
    offset = OffsetCalculator.new
    offset = rotator.rotation_sequence(key, date)
    my_message = string.to_s.downcase.split("")
    count = 0
    decryption = my_message.map do |letter|
      (count = 0) if count == 4
      encrypted_letter = decrypt_single(letter, offset[count])
      count += 1
      encrypted_letter
    end.join
  end

  def crack(my_message, date)
    key = 9999
    cracking = decrypt(string, key, date)
    until cracking[-7..-1] == "..end.." do
      cracking = decrypt(string, key, date)
      key += 1
      break if key == 99999
    end
    key -= 1
  end
end
