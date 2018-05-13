require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/date'
require './lib/key_generator'
# require 'simplecov'
# SimpleCov.start

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

  def test_rots_are_added_to_offsets
    enigma = Enigma.new('message.txt')
    key = KeyGenerator.new.rotations([1, 2, 3, 4, 5])
    date = Date.new.offsets

    assert_equal [19, 24, 36, 49], enigma.rots_added_to_offsets(key, date)
  end
end
