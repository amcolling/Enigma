require 'pry'
class Enigma
  attr_reader :rotation

  def initialize
    @character_map =
    [ "a", "b", "c", "d", "f","g","h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
    # @message = File.read(file_name).chomp.chars
    @rotation = []
  end

  def combine_rotations_and_offsets(key, date)
    key = KeyGenerator.new
    key_1 = key.rotations(key)
    offset = OffsetCalculator.new(date)
    a = []
    a << offset.generate[0] + key_1.rotations[0]
    a << offset.generate[1] + key_1.rotations[1]
    a << offset.generate[2] + key_1.rotations[2]
    a << offset.generate[3] + key_1.rotations[3]
    a
  end


  def encrypt_single(my_message, rotation_key)
      @character_map.zip(@character_map.rotate(a[0])).to_h
  end




    # offsets and rotations added together
    # goes to character map and iterates
    # shoves into an array
    # joins array as encrypted
    # write to a file called encrypted.txt





end
