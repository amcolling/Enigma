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

  def test_slice_into_four
    offset = OffsetCalculator.new(Date.today)
    date_squared = "2633537124"
    actual = offset.slice_into_four(date_squared)
    expected = "7124"
    assert_equal expected, actual
  end

  # def test_offsets
  #   skip
  #   offset = OffsetCalculator.new(Date.today)
  #   assert_equal [], offset.offsets(3323232)
  # end

end
