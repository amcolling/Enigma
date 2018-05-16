require './test/test_helper.rb'
require './lib/offset_calculator'
require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of OffsetCalculator, offset
  end

  def test_it_can_generate_new_key_and_todays_date
    offset = OffsetCalculator.new
    assert 5, offset.key.length
    assert_instance_of Date, offset.date
  end

  def test_it_can_aslo_accept_inputted_key_and_date
    offset = OffsetCalculator.new("23567", 51518)

    assert_equal "23567", offset.key
    assert_equal 51518, offset.date
  end

  def test_it_reformats_date_if_date_is_date_object
    offset = OffsetCalculator.new("23567")

    assert_equal Date.today.strftime("%e%m%y").to_i, offset.reformat_date

    offset2 = OffsetCalculator.new("23567", 51518)
    assert_equal 51518, offset2.reformat_date
  end

  def test_it_squares_the_date_and_changes_integer_to_string
    skip
    offset = OffsetCalculator.new(Date.today)
    date_reformatted = 51318
    assert_equal "2633537124", offset.squares_the_date(date_reformatted)
  end

  def test_slice_into_four
    skip
    offset = OffsetCalculator.new(123456)
    date_squared = "2633537124"
    actual = offset.slice_into_four(date_squared)
    expected = "7124"
    assert_equal expected, actual
  end

  def test_it_turns_four_digit_string_into_array
    skip
    offset = OffsetCalculator.new(Date.today)
    four_numbers = "7124"
    actual = offset.string_to_int_array(four_numbers)
    expected = [7, 1, 2, 4]
    assert_equal expected, actual
  end

  def test_it_generates_a_four_value_array_from_todays_date
    skip
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of Array, offset.generate
    assert_equal 4, offset.generate.length
    assert_instance_of Integer, offset.generate[1]
    assert_equal  [4, 3, 2, 4], offset.generate
  end

  def test_generate_date
    skip
    offset = OffsetCalculator.new(Date.today)
    assert_instance_of Date, offset.date
    assert_equal  [4, 3, 2, 4], offset.generate
  end


end
