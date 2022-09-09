class Food

  attr_reader :code, :description, :owners, :ingredients

  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @owners = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end