
class KeyGenerator

  def random_key
    Array.new(5).map do |num|
    rand(9)
    end
  end

  def rotations(key = random_key)
    rots = []
    rots << key[0..1].join.to_i
    rots << key[1..2].join.to_i
    rots << key[2..3].join.to_i
    rots << key[3..4].join.to_i
  end
end
