require 'pry'
class Enigma
  attr_reader :message

  def initialize(file_name)
    @character_map =
    [ "a", "b", "c", "d", "f","g","h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
    @message = File.read(file_name).chomp.chars

  end


  def encrypt(file_name, key, date)
    # offsets and rotations added together
    # goes to character map and iterates
    # shoves into an array
    # joins array as encrypted
    # write to a file called encrypted.txt
  end

  def rots_added_to_offsets(key, date)
    abcd = key.map do |k|
      k + date
    end
  end



end
