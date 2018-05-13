require 'pry'
require 'date'
class Date
  attr_reader :offset
  def initialize
    @offset = generate_offset
  end

  def generate_date
    DateTime.now.strftime("%m%d%y").to_i
  end

  def square_date
    generate_date ** 2
  end

  def generate_offset
    square_generate_offset.to_s[-4..-1]
  end

  def a_off
    @offset[0].to_i
  end

  def b_off
    @offset[1].to_i
  end

  def c_off
    @offset[2].to_i
  end

  def d_off
    @offset[3].to_i
  end

end


# o1 = D.new
#
# puts "offset is: #{o1.offset}"
# puts "A offset: #{o1.a_off}"
# puts "B offset: #{o1.b_off}"
# puts "C offset: #{o1.c_off}"
# puts "D offset: #{o1.d_off}"
