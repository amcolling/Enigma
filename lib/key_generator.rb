
class KeyGenerator

  def rotations
    key = rand(1000..99999)
    new_key = key.digits
    rots = []
    rots << new_key[0..1]
    rots << new_key[1..2]
    rots << new_key[2..3]
    rots << new_key[3..4]
    rots.flatten[0..4]
  end

end
