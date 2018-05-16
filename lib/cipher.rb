require 'pry'
require 'date'
class Cipher
  attr_reader :key,
              :character_map

  def initialize(key)
    @key = key
    @character_map =
    [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
  end


  def encrypt_single(my_message)
    zipped_hash = @character_map.zip(@character_map.rotate(@key[0])).to_h
    encrypted_letter = zipped_hash.fetch(my_message)
    encrypted_letter
  #   binding.pry
  end

  def decrypt_single(my_message, key, offset)
    rots = rotations(key)
    rotations = combine_rotations_and_offsets(rots, offset)
    zipped_hash = @character_map.zip(@character_map.rotate(key_rotations[0]*-1)).to_h
    encrypted_letter = zipped_hash.fetch(my_message)
    encrypted_letter
  end

  def encrypt_message(my_message, key = @key, date = Date.today)
    offset = OffsetCalculator.new(key, date)
    offset.offsets
    rots = rotations(key)

    letters = my_message.to_s.downcase.split("")
    count = 0
    letters.map do |letter|
      (count = 0) if count == 4
      encrypted_letter = encrypt_single(letter, rots, offset[count])
      count += 1
      binding.pry
      encrypted_letter
    end.join
  end

  def decrypt_message(my_message, key = @key, offset)
    rots = rotations(key)
    my_message = my_message.to_s.downcase.split("")
    count = 0
    decryption = my_message.map do |letter|
      (count = 0) if count == 4
      encrypted_letter = decrypt_single(letter, rots, offset[count])
      count += 1
      encrypted_letter
    end.join
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




  # def encrypt_message(my_message, key, offset)
  #   letters = @message.to_s.downcase.split("")
  #   count = 0
  #   letters.map do |letter|
  #     (count = 0) if count == 4
  #     encrypted_letter = encrypt_single(letter, key, offset[count])
  #     count += 1
  #     encrypted_letter
  #   end.join
  # end
  #
  # def encrypt_single(my_message, key, offset)
  #   rotations = combine_rotations_and_offsets(key, offset)
  #   zipped_hash = @character_map.zip(@character_map.rotate(rotations[0])).to_h
  #   encrypted_letter = zipped_hash.fetch(my_message)
  #   encrypted_letter
  # end
