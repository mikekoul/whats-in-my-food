class FoodService

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
    end
  end

  def self.search(food)
    response = conn.get("foods/search/?query=#{food}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end