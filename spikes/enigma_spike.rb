require './lib/key_spike.rb'
require './lib/offset_spike.rb'

class Enigma
  attr_reader :key,
              :offset,
              :a_rotate,
              :b_rotate,
              :c_rotate,
              :d_rotate
  def initialize(key, offset)
    @key = key
    @offset = offset
    @a_rotate = generate_a_rotate
    # @b_rotate =
    # @c_rotate =
    # @d_rotate =
  end

  def generate_a_rotate
    @key.a_rot + @offset.a_off
  end
end
k = Key.new
o = Offset.new
e = Enigma.new(k, o)
p e
p e.key
p e.offset
p e.a_rotate
