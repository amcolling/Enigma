require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'simplecov'
SimpleCov.start

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end


end
