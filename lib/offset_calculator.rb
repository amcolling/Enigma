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

  def offsets(date)
    date.slice(-4, 4)
    date.map do |number|
     number.to_i
    end
  end
 end
