
class KeyGenerator

  def rotations(key = rand(10000..99999))
    key = key.digits.reverse
    rots = []
    rots << key[0..1].join.to_i
    rots << key[1..2].join.to_i
    rots << key[2..3].join.to_i
    rots << key[3..4].join.to_i
  end

end
