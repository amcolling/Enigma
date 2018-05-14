require './test/test_helper.rb'
require './lib/enigma'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset= Offset.new
    assert_instance_of Offset, offset
  end

  def test_generate_date
    offset = Offset.new
    assert Offset.new, offset.generate_date
  end

  def test_square_date
    offset = Offset.new
    assert date.generate_date ** 2, offset.square_date()
  end

  def test_last_four_digits
    offset = Offset.new
    assert 4, offset.last_four_digits.length
  end

  def test_generate_offset_array
    offset = Offset.new
    assert_instance_of Array, offset.generate_offset_numbers
  end

end
