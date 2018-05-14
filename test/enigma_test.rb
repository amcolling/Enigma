require './test/test_helper.rb'
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


end
