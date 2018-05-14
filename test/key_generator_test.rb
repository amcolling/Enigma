require './test/test_helper.rb'
require './lib/enigma'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
    key_generator = KeyGenerator.new
    assert_instance_of KeyGenerator, key_generator
  end

  def test_random_key
    key = KeyGenerator.new.random_key
    assert key.length == 5
    assert_instance_of Array, key
    assert_instance_of Integer, key[2]
    assert key[1] >= 0
    assert key[0] <= 9
  end

  def test_rotations
    rotations = KeyGenerator.new.rotations([1, 2, 3, 4, 5])
    assert_equal [12, 23, 34, 45], rotations
  end
end
