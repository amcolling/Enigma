require 'pry'
require 'date'

class OffsetCalculator
  attr_reader :date,
              :rotations

  def initialize(date)
    @date = date
    @rotations = []
  end

  def generate
    formatted_date = reformat_date(@date)
    squared_date = squares_the_date(formatted_date)
    sliced_square = slice_into_four(squared_date)
    string_to_int_array(sliced_square)
  end

  def generate
    formatted_date = reformat_date(@date)
    squared_date = squares_the_date(formatted_date)
    sliced_square = slice_into_four(squared_date)
    string_to_int_array(sliced_square)
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

  def rotation_cogs(key = rand(0..9), date = Date.today)
      key = KeyGenerator.new(array)
      a_key = key.random_key(key)[0] + offset.squares_the_date(date)[0]

      b_key = key.random_key(key)[1] + offset.squares_the_date(date)[1]

      c_key = key.random_key(key)[2] + offset.squares_the_date(date)[2]
      
      d_key = key.random_key(key)[3] + offset.squares_the_date(date)[3]
      @rotation << a_key
      @rotation << b_key
      @rotation << c_key
      @rotation << d_key
  end

end
