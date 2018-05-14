require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'




class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new("this is so secret ..end..")
    assert_instance_of Enigma, enigma
  end

  def test_message_characters_into_array
    enigma = Enigma.new("this is so secret ..end..")

    assert_equal result, enigma.message
  end

  def test_combine_rotations_and_offsets
    enigma = Enigma.new("this is so secret ..end..")
    key = KeyGenerator.new
    offset = OffsetCalculator.new(Date.today)
    assert_equal "", enigma.combine_rotations_and_offsets
  end


  def test_encrypt
    enigma = Enigma.new("t")
    assert_equal ["t", "h", "i", "s"], enigma.encrypt("t")
  end



end
