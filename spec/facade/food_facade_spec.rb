require 'rails_helper'

RSpec.describe FoodFacade do
  it '#search food by keyword' do
    results = FoodFacade.food_search("sweet potatoes")

    expect(results.count).to eq(10)
    expect(results[0].code).to eq('adfasdf')
    expect(results[0].description).to eq('adfasdf')
    expect(results[0].owners).to eq('adfasdf')
    expect(results[0].ingredients).to eq('adfasdf')
  end
end