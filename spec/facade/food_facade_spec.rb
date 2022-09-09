require 'rails_helper'

RSpec.describe FoodFacade do
  it '#search food by keyword' do
    results = FoodFacade.food_search("sweet potatoes")

    expect(results.count).to eq(10)
    expect(results[0].code).to eq("8901020020844")
    expect(results[0].description).to eq("SWEET POTATOES")
    expect(results[0].owners).to eq("NOT A BRANDED ITEM")
    expect(results[0].ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end