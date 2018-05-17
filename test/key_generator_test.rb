require './test/test_helper.rb'
require './lib/enigma'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
    key = KeyGenerator.new
    assert_instance_of KeyGenerator, key
  end

  def test_it_creates_string_of_five_random_numbers
    key = KeyGenerator.new
    assert_instance_of String, key.create
    assert 5, key.create.length
    assert key.create[2].to_i <= 9
  end
end
