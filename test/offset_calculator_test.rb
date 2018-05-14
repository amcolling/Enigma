require './test/test_helper.rb'
# require './lib/enigma'
require './lib/offset_calculator'
require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of OffsetCalculator, offset
  end

  def test_generate_date
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of Date, offset.date
  end

  def test_it_reformats_date
    offset = OffsetCalculator.new(Date.today)
    assert offset.reformat_date(offset.date) == Date.today.strftime("%m%d%y").to_i
  end

  def test_it_squares_the_date
    offset = OffsetCalculator.new(Date.today)
    assert_equal 2633537124, offset.squares_the_date(Date.today)
  end

  def test_it_separates_last_four_digits_of_squared_date
    offset = OffsetCalculator.new(Date.today)
    expected = 5737
    assert_equal expected, offset.last_four_digits(Date.today)
  end

  def test_offsets
    skip
    offset = OffsetCalculator.new(Date.today)
    assert_equal [], offset.offsets(3323232)
  end

end
