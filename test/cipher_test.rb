require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
# require './lib/enigma'
require './lib/cipher'

class CipherTest < Minitest::Test
  def test_it_exists
    cipher = Cipher.new
    assert_instance_of Cipher, cipher
  end

  def test_encrypt_single
    cipher = Cipher.new
    rotations = [31, 38, 58, 71]
    assert_equal "l", cipher.encrypt_single("t", 0, rotations)
  end

  def test_encrypt_message
    cipher = Cipher.new
    key = "23567"
    date = 160518
    my_message = "this is so secret ..end.."
    expected = "lg1l2h.3knql9b  l9r49mw43"
    actual = cipher.encrypt_message(my_message, key, date)
    assert_equal expected, actual
  end

  def test_decrypt_single
    cipher = Cipher.new
    rotations = [-31, -38, -58, -71]
    assert_equal "t", cipher.decrypt_single("l", 0, rotations)
  end

  def test_decrypt_message
    cipher = Cipher.new
    key = "23567"
    date = 160518
    actual = cipher.decrypt_message("lg1l2h.3knql9b  l9r49mw43", key, date)
    expected = "this is so secret ..end.."
    assert_equal expected, actual
  end

  def test_can_crack_key
    cipher = Cipher.new
    date = 160518
    message = 'lg1l2h.3knql9b  l9r49mw43'
    expected = 23567
    actual = cipher.crack_the_key(message, date)
    assert_equal expected, actual
  end

  def test_crack_works
    cipher = Cipher.new
    date = 160518
    expected = 'this is so secret ..end..'
    actual = cipher.crack('lg1l2h.3knql9b  l9r49mw43', date)
    assert_equal expected, actual
  end
end
