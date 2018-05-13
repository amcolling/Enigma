require 'pry'
class KeyGenerator


  def initialize
  end

  def random_key
    Array.new(5).map do |num|
    rand(9)
    end
  end

  def rotations
    rots = []
    key = random_key
    rots << key[0..1].join.to_i
    rots << key[1..2].join.to_i
    rots << key[2..3].join.to_i
    rots << key[3..4].join.to_i
    rots << key[4..5].join_to_i
  end

end
