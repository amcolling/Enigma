require 'pry'
require 'date'

class OffsetCalculator
  attr_reader :date,
              :key

  def initialize(date, key)
    @date = date
    @key  = key
  end

  def reformat_date(date)
    date.strftime("%m%d%y").to_i
  end

  def squares_the_date(date)
    date ** 2
  end

  def last_four_digits(date)
    date = date.to_s[-4..-1].to_i
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
