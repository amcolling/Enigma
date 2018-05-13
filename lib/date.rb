require 'pry'
require 'date'

class Date


  def initialize
  end

  def generate_date
    DateTime.now.strftime("%m%d%y").to_i
  end

  def square_date
    generate_date ** 2
  end

  def last_four_digits
    binding.pry
    final_date = square_date.to_s[-4..-1]
      final_date = final_date[-4..-1].split(',').map(&:to_i)
  end
  #
  # def offsets
  #
  #  last_four_digits.chars
  # end

  # def a_off
  #   @offset[0].to_i
  # end
  #
  # def b_off
  #   @offset[1].to_i
  # end
  #
  # def c_off
  #   @offset[2].to_i
  # end
  #
  # def d_off
  #   @offset[3].to_i
  # end

end
