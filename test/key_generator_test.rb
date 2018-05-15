require './test/test_helper.rb'
require './lib/enigma'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
    key = KeyGenerator.new
    assert_instance_of KeyGenerator, key
  end

  def test_rotations
    key = KeyGenerator.new
    assert_instance_of Array, key.rotations
    assert_instance_of Integer, key.rotations[2]
  end


end
