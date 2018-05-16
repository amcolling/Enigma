require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
# require './lib/enigma'
require './lib/cipher'

class CipherTest < Minitest::Test
  def test_it_exists
    cipher = Cipher.new
    offset = OffsetCalculator.new
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
    assert_equal "lg1l2h.3knql9b  l9r49mw43", cipher.encrypt_message("this is so secret ..end..", key, date)
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
    assert_equal "this is so secret ..end..", cipher.decrypt_message("lg1l2h.3knql9b  l9r49mw43", key, date)
  end

  def test_crack_works
      cipher = Cipher.new
      date = 160518
      actual = cipher.crack("lg1l2h.3knql9b  l9r49mw43", date)
      assert_equal "this is so secret ..end..", actual
  end



  def test_turn_key_into_four_two_digit_value_array
      key = "37766"
      enigma = Cipher.new
      assert_equal [37,77,76,66], enigma.turn_key_into_four_two_digit_value_array(key)
  end




  end
