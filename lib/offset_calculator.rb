require 'pry'
require 'date'

class OffsetCalculator
  attr_reader :date,
              :rotations

  def initialize(date)
    @date = date
    @rotations = []
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

  def generate
    formatted_date = reformat_date(@date)
    squared_date = squares_the_date(formatted_date)
    sliced_square = slice_into_four(squared_date)
    string_to_int_array(sliced_square)
  end


end
