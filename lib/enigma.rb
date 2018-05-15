require 'pry'
class Enigma
  attr_reader :a

  def initialize
    @character_map =
    [ "a", "b", "c", "d", "f","g","h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
    @a = []
  end

  def combine_rotations_and_offsets(rotation, offset)
    @a << offset[0] + rotation[0]
    @a << offset[1] + rotation[1]
    @a << offset[2] + rotation[2]
    @a << offset[3] + rotation[3]
    @a

  end

  def encrypt_single(my_message)
    @character_map.zip(@character_map.rotate(@a[0])).to_h
    binding.pry
  end

  def encrypt_message(my_message, rotation_key)
    key = KeyGenerator.new
    offset = OffsetCalculator.new
    letters = my_message.to_s.downcase.split("")
    count = 0
    letters.map do |letter|
      (count = 0) if count == 4
      encrypted_letter = encrypt_single(letter, offset[count])
      count += 1
      encrypted_letter
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
