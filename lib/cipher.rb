require 'pry'
require 'date'
class Cipher
  attr_reader :key,
              :character_map

  def initialize

    @character_map =
    [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
  end


  def encrypt_single(message_letter, count, rotations)
    zipped_hash = @character_map.zip(@character_map.rotate(rotations[count])).to_h
    zipped_hash[message_letter]
  end

  def encrypt_message(my_message, key = @key, date = Date.today)
    offset = OffsetCalculator.new(key, date)
    rotations = offset.create
    letters = my_message.downcase.split("")
    encrypted_message = []
    until letters[0] == nil
      four_letters = letters.shift(4)
      4.times do |num|
        encrypted_message << encrypt_single(four_letters[num], num, rotations)
        end
    end
    encrypted_message.compact.join
  end

  def decrypt_single(message_letter, count, rotations)
    zipped_hash = @character_map.zip(@character_map.rotate(rotations[count])).to_h
    zipped_hash[message_letter]
  end


  def decrypt_message(my_message, key, date)
    offset = OffsetCalculator.new(key, date)
    rotations = offset.create.map do |num|
      num * -1
    end
    letters = my_message.downcase.split("")
    decrypted_message = []
    until letters[0] == nil
      four_letters = letters.shift(4)
      4.times do |num|
        decrypted_message << encrypt_single(four_letters[num], num, rotations)
        binding.pry
        end
    end
    decrypted_message.compact.join
end

  def crack
    key = ("9999").to_i
    cracking = encrypt_message(message, key, date)
    until cracking[-7..-1] == "..end.." do
      cracking = encrypt_message(message,key,date)
      key += 1
      break if key == 99999
    end
    key -= 1
  end
end
