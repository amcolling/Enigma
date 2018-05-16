require 'pry'
require 'date'
class Cipher
  attr_reader :message,
              :key,
              :date

  def initialize(message, key = KeyGenerator.new, date = Date.today)
    @message  = message
    @key      = key
    @date     = date
    
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

end
