
class KeyGenerator

<<<<<<< HEAD
  def random_key
    Array.new(5).map do |num|
    rand(9)
    end
  end

  def rotations(key = random_key)
=======
  def rotations
    key = rand(1000..99999)
    new_key = key.digits
>>>>>>> 47b602dabbebf9cbf989ab34d76d5e1bd83dde5b
    rots = []
    rots << new_key[0..1]
    rots << new_key[1..2]
    rots << new_key[2..3]
    rots << new_key[3..4]
    rots.flatten[0..4]
  end

end
