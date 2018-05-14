require 'pry'
class Enigma
  attr_reader :message,
              :rotation

  def initialize(file_name)
    @character_map =
    [ "a", "b", "c", "d", "f","g","h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
    @message = File.read(file_name).chomp.chars
    @rotation = []
  end

  def rotation_cogs(key = rand(0..9), date = Date.today)
      key = KeyGenerator.new
      offset = OffsetCalculator.new(Date.today, key)
      a_key = key.random_key(key)[0] + offset.squares_the_date(date)[0]
      b_key = key.random_key(key)[1] + offset.squares_the_date(date)[1]
      c_key = key.random_key(key)[2] + offset.squares_the_date(date)[2]
      d_key = key.random_key(key)[3] + offset.squares_the_date(date)[3]
      @rotation << a_key
      @rotation << b_key
      @rotation << c_key
      @rotation << d_key
  end


  # def encrypt(file_name, key, date)
  #   # offsets and rotations added together
  #   # goes to character map and iterates
  #   # shoves into an array
  #   # joins array as encrypted
  #   # write to a file called encrypted.txt
  # end




end
