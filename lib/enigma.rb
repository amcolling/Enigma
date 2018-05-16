require 'pry'
require 'date'
class Enigma
  attr_reader :a

  def initialize
    # @key = KeyGenerator.new.create
    @character_map =
    [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]

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

  def encrypt_single(my_message, key, offset)

    rots = rotations(key)
    rotations = combine_rotations_and_offsets(rots, offset)
    zipped_hash = @character_map.zip(@character_map.rotate(rotations[0])).to_h
    encrypted_letter = zipped_hash.fetch(my_message)
    encrypted_letter
  end

  def decrypt_single(my_message, key, offset)
    rots = rotations(key)
    rotations = combine_rotations_and_offsets(rots, offset)
    zipped_hash = @character_map.zip(@character_map.rotate(rotations[0]*-1)).to_h
    encrypted_letter = zipped_hash.fetch(my_message)
    encrypted_letter
  end

  def rotations(key = @key)
    rots = []
    rots << key[0..1].join.to_i
    rots << key[1..2].join.to_i
    rots << key[2..3].join.to_i
    rots << key[3..4].join.to_i
  end

  def turn_key_into_four_two_digit_value_array(key)
    rots = []
    rots << key[0..1].to_i
    rots << key[1..2].to_i
    rots << key[2..3].to_i
    rots << key[3..4].to_i
    rots
  end

  def combine_rotations_and_offsets(key, offset)
    key_array = turn_key_into_four_two_digit_value_array(key)
    rotation_array = []
    rotation_array << offset[0] + key_array[0]
    rotation_array << offset[1] + key_array[1]
    rotation_array << offset[2] + key_array[2]
    rotation_array << offset[3] + key_array[3]
    rotation_array
  end


  def crack(my_message, date)
    key = "9999"
    cracking = decrypt_message(my_message, key, date)
    until cracking[-7..-1] == "..end.." do
      cracking = decrypt_message(my_message, key, date)
      key += 1
      break if key == 99999
    end
    key -= 1
  end
end
