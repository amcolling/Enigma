require 'pry'
require 'date'
class Enigma
  attr_reader :key,
              :date

  def initialize
    @key = 0
    @date = 0
  end




  def encrypt(my_message, key = KeyGenerator.new.create, date = Date.today)
    @key = key
    @date = date
    output = Cipher.new.encrypt_message(my_message, key, date)
    end





end
