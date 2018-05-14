require 'pry'
require 'date'

class OffsetCalculator
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def reformat_date(date)
    date.strftime("%e%d%y").to_i
  end

  def squares_the_date(date)
    (date ** 2).to_s
  end

  def slice_into_four(date)
    sliced = date.slice(-4..-1)
    sliced
  end

  def string_to_int_array(string)
    array = string.chars
    array.map(&:to_i)
  end
end
