require 'pry'
require 'date'

class OffsetCalculator
  attr_reader :key,
              :date
#takes in key and date or generates them.
  def initialize(key = KeyGenerator.new.create, date = Date.today)
    @key  = key
    @date = date
  end
#if date is Date object it converts it to 6 digit style
#after converted, it squares the date
#after it squares the date, it takes the last four digits
#after it gets last four digits, it makes an array of those
#then it makes a four digit array from the key
#then it adds together array of date and array of key



  # def initialize(key, date)
  #   @date = date
  # end
  #
  # def reformat_date(date)
  #   date.strftime("%e%d%y").to_i
  # end
  #
  # def squares_the_date(date)
  #   (date ** 2).to_s
  # end
  #
  # def slice_into_four(date)
  #   sliced = date.slice(-4..-1)
  #   sliced
  # end
  #
  # def string_to_int_array(string)
  #   array = string.chars
  #   array.map(&:to_i)
  # end
  #
  # def generate
  #   formatted_date = reformat_date(@date)
  #   squared_date = squares_the_date(formatted_date)
  #   sliced_square = slice_into_four(squared_date)
  #   string_to_int = string_to_int_array(slice_into_four)
  # end


end
