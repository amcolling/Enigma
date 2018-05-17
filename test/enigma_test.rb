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

  def test_encrypt_message_with_known_key_and_date
    e = Enigma.new
    my_message = 'A storm is raging on the open sea. We are the outcasts, No friends of sophistry ..end..'
    expected = e.encrypt(my_message, '82074', 160518)
    actual = "mu1t0bv ucgrm3rnsuxnjdqej.yezu1emvgwqujrqu2hquxu5zjs5ci z.gf35nnpcgoru1o14rs5b7 kvnnpvh"
    assert_equal expected, actual
  end

  def test_decrypt_message
    e = Enigma.new
    output = '2nbzgole1u3znikl2d4fnt9fh'
    key = '65690'
    date = 160518
    assert_instance_of String, e.decrypt(output, key, date)
    assert e.decrypt(output, key, date) != output
  end

  def test_crack
    date = 160518
    my_message = 'lg1l2h.3knql9b  l9r49mw43'
    e = Enigma.new
    e.crack(my_message, date)
    expected = 23567
    actual = e.cracked_key
    assert_equal expected, actual
  end

end
