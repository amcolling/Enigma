require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_key_generator
    key = Key.new
    assert_instance_of Array, key.key_generator
    assert key.key_generator.length <= 5
  end


  def test_random_key
    key = Key.new
    assert key.random_key.length == 5
  end


end
