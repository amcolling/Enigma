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
  def reformat_date(date)
    if date.class == Date
      date.strftime("%e%m%y").to_i
    else
      date
    end
  end
#after converted, it squares the date
  def square_the_date(date)
    (date ** 2).to_s
  end
#after it squares the date, it takes the last four digits
  def slice_into_four(date)
    sliced = date.slice(-4..-1)
    sliced
  end
#after it gets last four digits, it makes an array of those
  def string_to_int_array(date)
    array = date.chars
    array.map(&:to_i)
  end
#then it makes a four digit array from the key
  def key_rotations(key)
    key_array = key.chars
    rots = []
    rots << key_array[0..1].join.to_i
    rots << key_array[1..2].join.to_i
    rots << key_array[2..3].join.to_i
    rots << key_array[3..4].join.to_i
  end
#then it adds together array of date and array of key
def create(key_array, date_array)
  rotation_array = []
  rotation_array << date_array[0] + key_array[0]
  rotation_array << date_array[1] + key_array[1]
  rotation_array << date_array[2] + key_array[2]
  rotation_array << date_array[3] + key_array[3]
  rotation_array
end



  # def initialize(key, date)
  #   @date = date
  # end
  #
  # def reformat_date(date)
  #   date.strftime("%e%m%y").to_i
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
