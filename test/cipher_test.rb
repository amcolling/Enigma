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
    key = [23, 35, 56, 67]
    assert_equal "d", cipher.encrypt_single("t", 0, key)
  end

  def test_encrypt_message
    cipher = Cipher.new
    key = [23, 35, 56, 67]
    my_message = "this is so secret ..end.."
    assert_equal "ddzhue9zckoh1.86d6p01ju0v", cipher.encrypt_message("this is so secret ..end..", key)
  end

  def test_decrypt_single
    skip
    cipher = Cipher.new
    key = "37766"
    offset = [7,1,2,4]
    assert_equal "t", cipher.decrypt_single("y", key, offset)
  end
  def test_decrypt_message
    skip
    cipher = Cipher.new
    key = "37766"
    offset = [7,1,2,4]
    assert_equal "this is so secret ..end..", cipher.decrypt_message("sggq9hq8rn8qdbpcs999dmb9 ", key, offset)
  end
  def test_crack_works
      skip

      cipher = Cipher.new
      cipher = Cipher.new(message, key = KeyGenerator.new, date = Date.today)
      date = [7,1,2,4]
      cipher.decrypt_message("sggq9hq8rn8qdbpcs999dmb9 ", key, offset)
      assert_equal "this is so secret ..end..", cipher.crack
      # ("sggq9hq8rn8qdbpcs999dmb9 ", cipher.date)
  end



  def test_turn_key_into_four_two_digit_value_array
      skip
      key = "37766"
      enigma = Cipher.new
      assert_equal [37,77,76,66], enigma.turn_key_into_four_two_digit_value_array(key)
  end




  end
