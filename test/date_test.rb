require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/date'

class DateTest < Minitest::Test
  def test_it_exists
    date = Date.new
    assert_instance_of Date, date
  end

  def test_generate_date
    date = Date.new
    assert Date.new, date.generate_date
  end

  def test_square_date
    date = Date.new
    assert date.generate_date ** 2, date.square_date()
  end

  def test_last_four_digits
    date = Date.new
    assert 4, date.last_four_digits.length
  end

  def test_generate_offset_array
    date = Date.new
    assert_instance_of Array, date.offsets
  end

end
