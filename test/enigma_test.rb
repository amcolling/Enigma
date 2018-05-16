require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'
require './lib/cipher'


class EnigmaTest < Minitest::Test
  def test_it_exists
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_encrypt_message
    my_message = 'this is so secret ..end..'
    e = Enigma.new
    assert_instance_of String, e.encrypt(my_message)
    assert my_message != e.encrypt(my_message)

  end
end
