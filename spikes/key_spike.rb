require 'pry'
class Key
  attr_reader :key
  def initialize
    @key = generate_key
  end

  def generate_key
     "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
  end

  def a_rot
    @key[0].concat(@key[1]).to_i
  end

  def b_rot
    @key[1].concat(@key[2]).to_i
  end

  def c_rot
    @key[2].concat(@key[3]).to_i
  end

  def d_rot
    @key[3].concat(@key[4]).to_i
  end

  def rotation_array
    [a_rot,b_rot,c_rot,d_rot]
  end
end

# binding.pry
# k1 = Key.new
# p k1
#
# puts "first key is #{k1.key}"
# puts "A rotation: #{k1.a_rot}"
# puts "B rotation: #{k1.b_rot}"
# puts "C rotation: #{k1.c_rot}"
# puts "D rotation: #{k1.d_rot}"
# p k1.rotation_array
