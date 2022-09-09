class FoodFacade
  
  def self.food_search(food)
    parsed = FoodService.search(food)
    parsed[:foods].first(10).map do |data|
      Food.new(data)
    end
  end
end