require './test/test_helper.rb'
require './lib/key_generator'
require './lib/offset_calculator'
require './lib/enigma'
require './lib/cipher'




class CipherTest < Minitest::Test
  def test_it_exists
    cipher = Cipher.new("this is so secret ..end..")
    assert_instance_of Cipher, cipher
  end
end
