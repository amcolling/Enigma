require 'pry'
class KeyGenerator
  attr_reader :rand_offsets

  def initialize
  end

  def random_key
    Array.new(5).map do |num|
    rand(9)
    end
  end

end
