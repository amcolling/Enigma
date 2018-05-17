class KeyGenerator
  def create
    rand(10000..99999).to_s
  end
end
