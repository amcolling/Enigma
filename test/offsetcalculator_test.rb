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
  end

  def test_it_reformats_date
    key = KeyGenerator.new.random_key
    offset = OffsetCalculator.new(Date.today, key)

    assert offset.reformat_date(offset.date) == Date.today.strftime("%m%d%y").to_i
  end

  def test_it_squares_the_date
    key = KeyGenerator.new.random_key
    offset = OffsetCalculator.new(Date.today, key)
    
    expected = (Date.today.strftime("%m%d%y").to_i) ** 2
    actual = offset.squares_the_date(offset.reformat_date(offset.date))


    assert_equal expected, actual
  end

  # def test_generate_offset_array
  #   date = OffsetCalculator.new
  #   assert_instance_of Array, date.offsets
  # end

end
