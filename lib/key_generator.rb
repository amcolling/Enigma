class KeyGenerator
<<<<<<< HEAD

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
=======
  def create
    "rand(10000..99999)"
>>>>>>> 5ef644a5d36cf0c7399f2d709074d96f2340986e
  end


end
#   def random_key
#     Array.new(5).map do |num|
#     rand(9)
#     end
#   end
#
#   def rotations(key = random_key)
#     rots = []
#     rots << key[0..1].join.to_i
#     rots << key[1..2].join.to_i
#     rots << key[2..3].join.to_i
#     rots << key[3..4].join.to_i
#   end
# end
