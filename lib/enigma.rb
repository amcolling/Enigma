require 'pry'
class Enigma
  attr_reader :rotation

  def initialize(my_message)
    @character_map =
    [ "a", "b", "c", "d", "f","g","h", "i", "j",
    "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z", "0", "1", "2", "3",
    "4", "5", "6", "7", "8", "9", " ", ".", ","]
    # @message = File.read(file_name).chomp.chars
    @rotation = []
  end

  def combine_rotations_and_offsets
    key = KeyGenerator.new
    offset = OffsetCalculator.new(Date.today)
    a = []
    a << offset.generate[0] + key.rotations[0]
    a << offset.generate[1] + key.rotations[1]
    a << offset.generate[2] + key.rotations[2]
    a << offset.generate[3] + key.rotations[3]
    a
  end


  def encrypt(single_character)
      @character_map.zip(@character_map.rotate(a[0])).to_h

  end


    # offsets and rotations added together
    # goes to character map and iterates
    # shoves into an array
    # joins array as encrypted
    # write to a file called encrypted.txt





end
