require 'pry'
require 'date'
class Enigma
  attr_reader :key,
              :date,
              :cracked_key

  def initialize
    @key  = 0
    @date = 0
    @cracked_key = 0
  end

  def encrypt(my_message, key = KeyGenerator.new.create, date = Date.today)
    @key = key
    @date = date
    Cipher.new.encrypt_message(my_message, key, date)
  end

  def decrypt(output, key, date = Date.today)
    @key = key
    @date = date
    Cipher.new.decrypt_message(output, key, date)
  end

  def crack(output, date = Date.today)
    @date = date
    @cracked_key = Cipher.new.crack_the_key(output, date)
    Cipher.new.crack(output, date)
  end



end
