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
    key = "37766"
    offset = [7,1,2,4]
    assert_equal "y", cipher.encrypt_single("t")
  end
  def test_encrypt_message
    skip
    enigma = Enigma.new
    key = "37766"
    offset = [7,1,2,4]
    assert_equal "sggq9hq8rn8qdbpcs999dmb9 ", enigma.encrypt_message("this is so secret ..end..")
  end
  def test_decrypt_single
    skip
    enigma = Enigma.new
    key = "37766"
    offset = [7,1,2,4]
    assert_equal "t", enigma.decrypt_single("y", key, offset)
  end
  def test_decrypt_message
    skip
    enigma = Enigma.new
    key = "37766"
    offset = [7,1,2,4]
    assert_equal "this is so secret ..end..", enigma.decrypt_message("sggq9hq8rn8qdbpcs999dmb9 ", key, offset)
  end
  def test_crack_works
      skip

      enigma = Enigma.new
      cipher = Cipher.new(message, key = KeyGenerator.new, date = Date.today)
      date = [7,1,2,4]
      enigma.decrypt_message("sggq9hq8rn8qdbpcs999dmb9 ", key, offset)
      assert_equal "this is so secret ..end..", enigma.crack
      # ("sggq9hq8rn8qdbpcs999dmb9 ", cipher.date)
  end



  def test_turn_key_into_four_two_digit_value_array
      skip
      key = "37766"
      enigma = Enigma.new
      assert_equal [37,77,76,66], enigma.turn_key_into_four_two_digit_value_array(key)
  end




  end
