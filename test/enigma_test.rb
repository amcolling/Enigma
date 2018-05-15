require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'




class EnigmaTest < Minitest::Test
  def test_it_exists
    skip
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_combine_rotations_and_offsets
    skip
    enigma = Enigma.new
    key = KeyGenerator.new
    offset = [7,1,2,4]
    # assert enigma.combine_rotations_and_offsets(key.rotations, offset.string_to_int_array("7124"))
  end


  def test_encrypt_single
    # skip
    enigma = Enigma.new
    key = [37,77,76,66]
    offset = [7,1,2,4]
    assert_equal ["t", "h", "i", "s"], enigma.encrypt_single("t", key, offset)
  end

  def test_encrypt_message
    skip
    enigma = Enigma.new
    key = KeyGenerator.new
    offset = OffsetCalculator.new(Date.today)
    assert_equal "", enigma.encrypt_message("this is so secret ..end..", key, offset)
  end


end
