require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset_calculator'
require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    key = KeyGenerator.new.random_key
    offset = OffsetCalculator.new(Date.today, key)
    assert_instance_of OffsetCalculator, offset
  end

  def test_generate_date
    key = KeyGenerator.new.random_key
    offset = OffsetCalculator.new(Date.today, key)
    assert_instance_of Date, offset.date
    binding.pry
  end
  #
  # def test_square_date
  #   date = OffsetCalculator.new
  #   assert date.generate_date ** 2, date.square_date()
  # end
  #
  # def test_last_four_digits
  #   date = OffsetCalculator.new
  #   assert 4, date.last_four_digits.length
  # end
  #
  # def test_generate_offset_array
  #   date = OffsetCalculator.new
  #   assert_instance_of Array, date.offsets
  # end

end
