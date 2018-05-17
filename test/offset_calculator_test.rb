require './test/test_helper.rb'
require './lib/offset_calculator'
require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of OffsetCalculator, offset
  end

  def test_it_stores_key_if_provided
    offset = OffsetCalculator.new('12345', 150_518)
    assert_equal '12345', offset.key
  end

  def test_it_creates_new_key_and_stores_it_if_no_key_provided
    offset = OffsetCalculator.new
    assert_instance_of String, offset.key
    assert 5, offset.key.length
    assert offset.key[2].to_i <= 9
  end

  def test_it_reformats_date
    offset = OffsetCalculator.new(Date.today)
    expected = offset.reformat_date(offset.date)
    actual = Date.today.strftime('%e%m%y').to_i
    assert actual == expected
  end

  def test_if_date_already_formatted_it_does_nothing
    offset = OffsetCalculator.new('12345', 150_518)
    expected = offset.reformat_date(offset.date)
    actual = 150_518
    assert actual == expected
  end

  def test_it_squares_the_date_and_changes_integer_to_string
    offset = OffsetCalculator.new('12345', 150_518)
    assert_equal '22655668324', offset.square_the_date(offset.date)
  end

  def test_slice_into_four
    offset = OffsetCalculator.new(123_456)
    date_squared = '2633537124'
    actual = offset.slice_into_four(date_squared)
    expected = '7124'
    assert_equal expected, actual
  end

  def test_it_turns_four_digit_string_into_array
    offset = OffsetCalculator.new(Date.today)
    four_numbers = '7124'
    actual = offset.string_to_int_array(four_numbers)
    expected = [7, 1, 2, 4]
    assert_equal expected, actual
  end

  def test_it_adds_date_array_and_key_array
    offset = OffsetCalculator.new('12345', 150_518)
    key_array = [12, 23, 34, 45]
    date_array = [8, 3, 2, 4]
    assert_equal [20, 26, 36, 49], offset.add_arrays(key_array, date_array)
  end

  def test_it_creates_rotations_array
    offset = OffsetCalculator.new('12345', 150_518)
    assert_equal [20, 26, 36, 49], offset.create
  end
end
