require 'pry'
class Key
  attr_reader :abcd,
              :rand_offsets

  def initialize
    @abcd = ["a", "b", "c", "d"]
    @rand_offsets = []
  end

  def key_generator
    (1..5).to_a.shuffle
  end

  def random_key
    @rand_offsets << key_generator[0..1].join.to_i
    @rand_offsets << key_generator[1..2].join.to_i
    @rand_offsets << key_generator[2..3].join.to_i
    @rand_offsets << key_generator[3..4].join.to_i
    @rand_offsets << key_generator[4..5].join_to_i
  end

end
