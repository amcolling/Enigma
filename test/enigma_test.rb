require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'




class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_combine_rotations_and_offsets
    enigma = Enigma.new
    key = KeyGenerator.new
    offset = OffsetCalculator.new(Date.today)
    assert_equal "", enigma.combine_rotations_and_offsets
  end


  def test_encrypt_single
    enigma = Enigma.new("t")
    key = KeyGenerator.new
    offset = OffsetCalculator.new(Date.today)
    assert_equal ["t", "h", "i", "s"], enigma.encrypt_single("t")
  end



end
