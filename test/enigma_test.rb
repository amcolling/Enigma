require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'




class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new('message.txt')
    assert_instance_of Enigma, enigma
  end

  def test_message_characters_into_array
    enigma = Enigma.new('message.txt')
    result = ["t", "h", "i", "s", " ", "i", "s", " ", "s", "o", " ", "s", "e", "c", "r", "e", "t", " ", ".", ".", "e", "n", "d", ".", "."]
    assert_equal result, enigma.message
  end

  # def test_rots_are_added_to_offsets
  #   enigma = Enigma.new('message.txt')
  #   key = KeyGenerator.new.rotations([1, 2, 3, 4, 5])
  #   offsets = OffsetCalculator.new(Date.today, key)
  #   assert_equal [19, 24, 36, 49], enigma.rots_added_to_offsets
  # end

  def test_rotation_cogs
    enigma = Enigma.new('message.txt')
    key = KeyGenerator.new.rotations([1, 2, 3, 4, 5])
    offset = OffsetCalculator.new(Date.today, key)
    assert_equal [], enigma.rotation_cogs(Date.today, key)
  end

end
