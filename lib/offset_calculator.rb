require 'pry'
require 'date'

class OffsetCalculator
  attr_reader :date


  def initialize(date)
    @date = date
  end

  def reformat_date(date)
    date.strftime("%m%d%y").to_i
  end

  def squares_the_date(date)
    date = date.strftime("%m%d%y").to_i
    date ** 2

  end

  def last_four_digits(date)
    binding.pry
    last_four_digits_array = []
    new_array = date.to_s.split(',').each do |num|
      num = Array.new
      num.chars.last(4)
      num
    end
  end

  def offsets(date)

    date.slice(-4, 4)
    date.map do |number|
     number.to_i
    end
  end
 end
