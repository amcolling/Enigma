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

  def test_decrypt_message
    output = '2nbzgole1u3znikl2d4fnt9fh'
    key = '40303'
    date = 160518
    e = Enigma.new
    assert_instance_of String, e.decrypt(output, key, date)
    assert e.decrypt(output, key, date) != output
  end

  def test_crack
    output = '2nbzgole1u3znikl2d4fnt9fh'
    date = 160518
    e = Enigma.new
    assert_instance_of Integer, e.crack(output, date)
  end

end
