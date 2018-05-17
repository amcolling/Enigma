class KeyGenerator
  def create
    rand(100_00..999_99).to_s
  end
end
