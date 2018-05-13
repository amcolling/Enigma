require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
    key_generator = KeyGenerator.new
    assert_instance_of KeyGenerator, key_generator
  end

  def test_random_key
    key_generator = KeyGenerator.new
    assert key_generator.random_key.length == 5
  end


end
