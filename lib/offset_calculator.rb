require 'date'

class OffsetCalculator
  attr_reader :key,
              :date

  def initialize(key = KeyGenerator.new.create, date = Date.today)
    @key  = key
    @date = date
  end

  def create
    key_array = key_rotations(@key)
    date = reformat_date(@date)
    squared_date = square_the_date(date)
    last_four = slice_into_four(squared_date)
    date_array = string_to_int_array(last_four)
    add_arrays(key_array, date_array)
  end

  def reformat_date(date)
    if date.class == Date
      date.strftime("%e%m%y").to_i
    else
      date
    end
  end

  def square_the_date(date)
    (date ** 2).to_s
  end

  def slice_into_four(date)
    sliced = date.slice(-4..-1)
    sliced
  end

  def string_to_int_array(date)
    array = date.chars
    array.map(&:to_i)
  end

  def key_rotations(key)
    key = key.to_s
    key_array = key.chars
    rots = []
    rots << key_array[0..1].join.to_i
    rots << key_array[1..2].join.to_i
    rots << key_array[2..3].join.to_i
    rots << key_array[3..4].join.to_i
  end

  def add_arrays(key_array, date_array)
    rotation_array = []
    rotation_array << date_array[0] + key_array[0]
    rotation_array << date_array[1] + key_array[1]
    rotation_array << date_array[2] + key_array[2]
    rotation_array << date_array[3] + key_array[3]
    rotation_array
  end
end
