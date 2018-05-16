require './test/test_helper.rb'
require './lib/offset_calculator'
require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of OffsetCalculator, offset
  end

  def test_it_reformats_date
    offset = OffsetCalculator.new(Date.today)
    assert offset.reformat_date(offset.date) == Date.today.strftime("%e%m%y").to_i
  end

  def test_it_squares_the_date_and_changes_integer_to_string
    offset = OffsetCalculator.new(Date.today)
    date_reformatted = 51318
    assert_equal "2633537124", offset.square_the_date(date_reformatted)
  end

  def test_slice_into_four
    offset = OffsetCalculator.new(123456)
    date_squared = "2633537124"
    actual = offset.slice_into_four(date_squared)
    expected = "7124"
    assert_equal expected, actual
  end

  def test_it_turns_four_digit_string_into_array
    offset = OffsetCalculator.new(Date.today)
    four_numbers = "7124"
    actual = offset.string_to_int_array(four_numbers)
    expected = [7, 1, 2, 4]
    assert_equal expected, actual
  end





end
