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
    (reformat_date(date) ** 2).to_s
  end

  def last_four_digits(date)
    squares_the_date(date).slice(-4..-1)


  end
end

 #  def offsets(date)
 #
 #    date.slice(date)(-4, 4)
 #    date.map do |number|
 #     number.to_i
 #    end
 #  end
 # end
